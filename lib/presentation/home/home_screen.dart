import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api_search/cubit/comment_cubit.dart';
import 'package:task_api_search/cubit/comment_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommentCubit>();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: cubit.commentController,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("search"),
            ),
            BlocBuilder<CommentCubit, CommentState>(
              builder: (context, state) {
                if (state is CommentLoading) {
                  return const CircularProgressIndicator();
                } else if (state is CommentSuccess) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.commentResponse.length,
                      itemBuilder: (context, index) {
                        return Text(
                          state.commentResponse[index].email!,
                          style: const TextStyle(color: Colors.black),
                        );
                      },
                    ),
                  );
                } else if (state is CommentError) {
                  const Text("Error State");
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
