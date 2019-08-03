import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<AState> buildEffect() {
  return combineEffects(<Object, Effect<AState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<AState> ctx) {
  ctx.dispatch(AActionCreator.onInitAction('A component!'));
}

