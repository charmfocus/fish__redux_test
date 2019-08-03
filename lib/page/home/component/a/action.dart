import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum AAction { initAction}

class AActionCreator {
  static onInitAction(String title) {
    return Action(AAction.initAction, payload: title);
  }
}
