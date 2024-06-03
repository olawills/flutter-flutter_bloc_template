import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/core/utils/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    DebugLogger.log('onEvent ', '${bloc.runtimeType}, $event');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    DebugLogger.log('onError ', '${bloc.runtimeType} $error' '$stackTrace');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    DebugLogger.log('OnTransition ', '${bloc.runtimeType} $transition');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    DebugLogger.log('Created', '${bloc.runtimeType}');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    // debugPrint('Closed ${bloc.runtimeType}');
  }
}
