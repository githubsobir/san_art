import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/list_app/list_app_entities.dart';

class PostsState {
  final List<ListAppEntities> posts;
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final int currentPage;
  final bool hasReachedMax;

  PostsState({
    required this.posts,
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    required this.currentPage,
    required this.hasReachedMax,
  });

  // Initial state
  factory PostsState.initial() {
    return PostsState(
      posts: [],
      isLoading: false,
      hasError: false,
      errorMessage: null,
      currentPage: 1,
      hasReachedMax: false,
    );
  }

  // Create a copy with method to update state
  PostsState copyWith({
    List<ListAppEntities>? posts,
    bool? isLoading,
    bool? hasError,
    String? errorMessage,
    int? currentPage,
    bool? hasReachedMax,
  }) {
    return PostsState(
      posts: posts ?? this.posts,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}
