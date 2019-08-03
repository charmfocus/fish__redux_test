import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BAction { initAction }

class BActionCreator {
  static Action onInitAction(String title) {
    return Action(BAction.initAction, payload: title);
  }
}
