import 'package:task_api_search/data/models/remote/comment_response.dart';

sealed class CommentState {}

final class CommentInitial extends CommentState {}

final class CommentError extends CommentState {}

final class CommentSuccess extends CommentState {
  CommentSuccess(this.commentResponse);

  final List<CommentResponse> commentResponse;

}

final class CommentLoading extends CommentState {}

final class CommentNoData extends CommentState {}
