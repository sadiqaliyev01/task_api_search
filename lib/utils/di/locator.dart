import 'package:get_it/get_it.dart';
import 'package:task_api_search/data/service/remote/comment_service.dart';
import 'package:task_api_search/utils/contractor/comment_contractor.dart';
import 'package:task_api_search/utils/repository/comment_repository.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async{
  locator.registerLazySingleton(() => CommentService());

  locator.registerLazySingleton<CommentContractor>(() => CommentRepository(locator()));

}