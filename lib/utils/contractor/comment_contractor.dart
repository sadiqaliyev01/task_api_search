import 'package:task_api_search/data/models/remote/comment_response.dart';

abstract class CommentContractor{
  Future<List<CommentResponse>> getComments();
}
