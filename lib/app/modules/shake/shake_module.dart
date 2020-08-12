import 'shake_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'shake_page.dart';

class ShakeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShakeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => ShakePage(),
            transition: TransitionType.noTransition),
      ];

  static Inject get to => Inject<ShakeModule>.of();
}
