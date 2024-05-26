import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api_search/cubit/comment_state.dart';
import 'package:task_api_search/utils/contractor/comment_contractor.dart';

class CommentCubit extends Cubit<CommentState> {
  CommentCubit(this._contractor) : super(CommentInitial());

  final CommentContractor _contractor;
  // final CommentService _commentService = CommentService();


  final commentController = TextEditingController();

  void getComments() async {
    try {
      emit(CommentLoading());
      log("Loading State");
      final data = await _contractor.getComments();
      log("Cubit data: ${data.toString()}");
      emit(CommentSuccess(data));
    } catch (e , s) {
      log(s.toString());
      emit(CommentError());
    }
  }
}
