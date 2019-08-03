import 'package:fish_redux/fish_redux.dart';
import 'package:fish_test/page/home/component/a/b/state.dart';

class AState implements Cloneable<AState> {
  String title = 'a';
  BState bState;

  @override
  AState clone() {
    return AState()
      ..title = title
      ..bState = bState;
  }

  AState({this.title = 'a', this.bState}) {
    this.bState = BState();
  }
}

AState initState(Map<String, dynamic> args) {
  return AState();
}


//class BConnector extends ConnOp<AState, BState> {
//  @override
//  BState get(AState state) {
//    return state.bState;
//  }
//
//  @override
//  void set(AState state, BState subState) {
//    state.bState = subState;
//  }
//}
class BConnector extends Reselect1<AState, BState, String> {
  @override
  BState computed(String state) {
    return BState(title: state);
  }

  @override
  String getSub0(AState state) {
    return state.title;
  }

  @override
  void set(AState state, BState subState) {
    state.bState = subState;
  }
}
