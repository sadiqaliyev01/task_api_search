import 'package:task_api_search/data/models/remote/comment_response.dart';
import 'package:task_api_search/data/service/remote/comment_service.dart';
import 'package:task_api_search/utils/contractor/comment_contractor.dart';

class CommentRepository implements CommentContractor{
  CommentRepository(this._commentService);
  final CommentService _commentService;

  @override
  Future<List<CommentResponse>> getComments() => _commentService.getComments();
}