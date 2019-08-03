import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BComponent extends Component<BState> {
  BComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BState>(
                adapter: null,
                slots: <String, Dependent<BState>>{
                }),);

}
