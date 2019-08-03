import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BState> buildEffect() {
  return combineEffects(<Object, Effect<BState>>{
    Lifecycle.initState: _init,
  });
}
void _init(Action action, Context<BState> ctx) {
  ctx.dispatch(BActionCreator.onInitAction('B component!'));
}
