import 'package:fish_redux/fish_redux.dart';

class BState implements Cloneable<BState> {
  String title = 'b';

  @override
  BState clone() {
    return BState()..title = title;
  }

  BState({this.title = 'b'});
}

BState initState(Map<String, dynamic> args) {
  return BState();
}
