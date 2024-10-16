import 'package:teamup/bloc_example/basic_fecth_api/repository/cat_repository.dart';
import 'package:teamup/bloc_example/basic_fecth_api/bloc/cats_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cats_state.dart';

class BlocCatsView extends StatefulWidget {
  @override
  _BlocCatsViewState createState() => _BlocCatsViewState();
}

class _BlocCatsViewState extends State<BlocCatsView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CatsCubit(SampleCatsRepository()),
      child: buildScaffold(context),
    );
  }

  Scaffold buildScaffold(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: BlocConsumer<CatsCubit, CatsState>(
          listener: (context, state) {
            if (state is CatsError) {
              var snackBar = SnackBar(content: Text(state.message));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            if (state is CatsInitial) {
              return buildCenterInitialChild(context);
            } else if (state is CatsLoading) {
              return buildCenterLoading();
            } else if (state is CatsCompleted) {
              return buildListViewCats(state);
            } else {
              return buildError(state);
            }
          },
        ),
      );

  Text buildError(CatsState state) {
    final error = state as CatsError;
    return Text(error.message);
  }

  ListView buildListViewCats(CatsCompleted state) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Image.network(state.response[index].imageUrl ?? ""),
        subtitle: Text(state.response[index].description ?? ""),
      ),
      itemCount: state.response.length,
    );
  }

  Center buildCenterLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Center buildCenterInitialChild(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Hello"), buildFloatingActionButtonCall(context)],
      ),
    );
  }

  FloatingActionButton buildFloatingActionButtonCall(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.search),
      onPressed: () {
        context.read<CatsCubit>().getCats();
      },
    );
  }
}
