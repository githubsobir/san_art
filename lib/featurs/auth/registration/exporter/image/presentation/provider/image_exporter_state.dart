import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:http_parser/http_parser.dart';

// Provider for the image picker controller
final imagePickerControllerProvider =
StateNotifierProvider<ImagePickerController, ImagePickerState>((ref) {
  return ImagePickerController();
});

// State class to hold image data
class ImagePickerState {
  final List<File> imageList;
  final bool isLoading;
  final String? errorMessage;

  ImagePickerState({
    this.imageList = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  ImagePickerState copyWith({
    List<File>? imageList,
    bool? isLoading,
    String? errorMessage,
  }) {
    return ImagePickerState(
      imageList: imageList ?? this.imageList,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

// Controller class for image picking and uploading functionality
class ImagePickerController extends StateNotifier<ImagePickerState> {
  ImagePickerController() : super(ImagePickerState());

  final ImagePicker _picker = ImagePicker();

  // Get image from gallery
  Future<void> getImageFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        state = state.copyWith(
          imageList: [File(image.path)],
          errorMessage: null,
        );
      }
    } catch (e) {
      state = state.copyWith(errorMessage: 'Rasm tanlashda xatolik: $e');
    }
  }

  // Get image from camera
  Future<void> getImageFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        state = state.copyWith(
          imageList: [File(image.path)],
          errorMessage: null,
        );
      }
    } catch (e) {
      state = state.copyWith(errorMessage: 'Kamera bilan xatolik: $e');
    }
  }

  // Show image picker dialog
  void showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Rasm tanlash'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Galeriyadan'),
                onTap: () {
                  Navigator.pop(context);
                  getImageFromGallery();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Kameradan'),
                onTap: () {
                  Navigator.pop(context);
                  getImageFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Upload image to server
  Future<void> uploadImageToServer({required BuildContext context}) async {
    if (state.imageList.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Iltimos, avval rasm tanlang')),
      );
      return;
    }

    try {
      state = state.copyWith(isLoading: true);

      // Get the image file
      File imageFile = state.imageList[0];

      // Create multipart request
      var uri = Uri.parse('YOUR_API_ENDPOINT_HERE'); // Replace with your API endpoint
      var request = http.MultipartRequest('POST', uri);

      // Add headers if needed
      // request.headers['Authorization'] = 'Bearer YOUR_TOKEN';

      // Attach file to the request
      var stream = http.ByteStream(imageFile.openRead());
      var length = await imageFile.length();

      var multipartFile = http.MultipartFile(
        'image', // Field name for the server
        stream,
        length,
        filename: basename(imageFile.path),
        contentType: MediaType('image', 'jpeg'), // Adjust based on your image type
      );

      request.files.add(multipartFile);

      // Send the request
      var response = await request.send();

      state = state.copyWith(isLoading: false);

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Rasm muvaffaqiyatli yuklandi')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Xatolik: ${response.statusCode}')),
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'Yuklashda xatolik: $e',
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Serverga yuklashda xatolik: $e')),
      );
    }
  }

  // Clear all images
  void clearImages() {
    state = state.copyWith(imageList: []);
  }
}