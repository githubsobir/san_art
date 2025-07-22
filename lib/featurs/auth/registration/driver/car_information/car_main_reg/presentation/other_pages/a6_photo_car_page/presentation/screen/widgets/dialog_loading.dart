import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/provider/car_photo_state.dart';

class LoadingDialog extends ConsumerStatefulWidget {
  const LoadingDialog({super.key});

  @override
  ConsumerState<LoadingDialog> createState() =>
      _LoadingDialogState();
}

class _LoadingDialogState extends ConsumerState<LoadingDialog> {
  @override
  Widget build(BuildContext context) {
    final uploadState = ref.watch(uploadStateProvider);
    ref.listen(uploadStateProvider, (previous, next) {
      log(uploadState.uploadedCount.toString());
      log(uploadState.totalCount.toString());
      if (uploadState.uploadedCount == uploadState.totalCount - 1) {
        Future.delayed(const Duration(milliseconds: 1500), () {
          Navigator.pop(context);
        });
      }
    });
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: backImage1(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (uploadState.isUploading)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 20,
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rasmlar yuklanmoqda...',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '${uploadState.uploadedCount}/${uploadState.totalCount} yuklandi',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          LinearProgressIndicator(
                            value: uploadState.progress,
                            backgroundColor: Colors.grey.shade300,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.primaryButtonColor(context)),
                            minHeight: 6,
                          ),
                        ],
                      ),

                    // Error state
                    if (uploadState.error != null)
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.error,
                                color: Colors.red.shade600, size: 20),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                uploadState.error!,
                                style: TextStyle(
                                  color: Colors.red.shade700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    // Success state
                    if (!uploadState.isUploading &&
                        uploadState.uploadedCount == uploadState.totalCount &&
                        uploadState.totalCount > 0)
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.check_circle,
                                color: AppColors.primaryButtonColor(context),
                                size: 32),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                'Barcha rasmlar muvaffaqiyatli yuklandi!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              ref: ref),
        ));
  }
}
