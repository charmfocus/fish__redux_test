import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(AState state, Dispatch dispatch, ViewService viewService) {
  var b = viewService.buildComponent('b');
  return Container(
    child: Column(
      children: <Widget>[
        Text(state.title),
        b,
      ],
    ),
  );
}
