import 'package:fish_redux/fish_redux.dart';
import 'package:fish_test/page/home/component/a/b/state.dart';
import 'package:fish_test/page/home/component/a/state.dart';

class HomeState implements Cloneable<HomeState> {
  AState aState;

  @override
  HomeState clone() {
    return HomeState()..aState = aState;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()..aState = AState();
}

//class AConnector extends ConnOp<HomeState, AState> {
//  @override
//  AState get(HomeState state) {
//    return state.aState;
//  }
//
//  @override
//  void set(HomeState state, AState subState) {
//    state.aState = subState;
//  }
//}

class AConnector extends Reselect2<HomeState, AState, String, BState> {
  @override
  AState computed(String sub0, BState sub1) {
    return AState(title: sub0, bState: sub1);
  }

  @override
  String getSub0(HomeState state) {
    return state.aState.title;
  }

  @override
  BState getSub1(HomeState state) {
    return state.aState.bState;
  }

  @override
  void set(HomeState state, AState subState) {
    state.aState = subState;
  }
}
//
//class AConnector extends Reselect1<HomeState, AState, String> {
//  @override
//  AState computed(String state) {
//    AState aState = AState();
//    return aState..title = state;
//  }
//
//  @override
//  String getSub0(HomeState state) {
//    return state.aState.title;
//  }
//
//  @override
//  void set(HomeState state, AState subState) {
//    state.aState = subState;
//  }
//}
