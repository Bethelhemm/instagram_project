import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/features/presentation/cubits/post/post_cubit.dart';
import 'package:instagram_clone/features/presentation/cubits/user/user_cubit.dart';
import 'package:instagram_clone/features/presentation/pages/search/widget/search_main_widget.dart';
import 'package:instagram_clone/injection_container.dart' as di;

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(
          create: (context) => di.sl<PostCubit>(),
        ),
      ],
      child: SearchMainWidget(),
    );
  }
}
