import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/features/domain/entities/posts/post_entity.dart';
import 'package:instagram_clone/features/presentation/cubits/post/post_cubit.dart';
import 'package:instagram_clone/features/presentation/pages/post/widget/update_post.dart';
import 'package:instagram_clone/injection_container.dart' as di;

class UpdatePostPage extends StatelessWidget {
  final PostEntity post;

  const UpdatePostPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCubit>(
      create: (context) => di.sl<PostCubit>(),
      child: UpdatePostMainWidget(
        post: post,
      ),
    );
  }
}
