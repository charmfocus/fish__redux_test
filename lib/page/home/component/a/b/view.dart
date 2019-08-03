import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.yellow,
    child: Text(state.title),
  );
}
