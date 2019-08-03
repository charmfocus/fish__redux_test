import 'package:fish_redux/fish_redux.dart';
import 'package:fish_test/page/home/component/a/b/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class AComponent extends Component<AState> {
  AComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<AState>(
              adapter: null,
              slots: <String, Dependent<AState>>{
                'b': BConnector() + BComponent(),
              }),
        );
}
