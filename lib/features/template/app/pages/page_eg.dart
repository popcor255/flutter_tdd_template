import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_template/core/util/injection_container.dart';
import 'package:tdd_template/features/template/app/bloc/bloc.dart';
import 'package:tdd_template/features/template/app/widgets/widgets.dart';

class PageEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: SingleChildScrollView(child: buildBody(context)),
    );
  }

  BlocProvider<BlocEg> buildBody(BuildContext context) {
    return BlocProvider(
      builder: (_) => sl<BlocEg>(),
      child: Column(
        children: <Widget>[
          LoadingWidget(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
