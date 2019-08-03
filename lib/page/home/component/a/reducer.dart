import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<AState> buildReducer() {
  return asReducer(
    <Object, Reducer<AState>>{
      AAction.initAction: _initAction,
    },
  );
}

AState _initAction(AState state, Action action) {
  final AState newState = state.clone();
  newState.title = action.payload;
  return newState;
}
