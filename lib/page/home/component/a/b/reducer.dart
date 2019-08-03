import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BState> buildReducer() {
  return asReducer(
    <Object, Reducer<BState>>{
      BAction.initAction: _initAction,
    },
  );
}

BState _initAction(BState state, Action action) {
  final BState newState = state.clone();
  newState.title = action.payload;
  return newState;
}
