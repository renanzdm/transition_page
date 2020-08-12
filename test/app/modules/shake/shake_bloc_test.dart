import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shake_transition/app/app_module.dart';
import 'package:shake_transition/app/modules/shake/shake_bloc.dart';
import 'package:shake_transition/app/modules/shake/shake_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ShakeModule());
  ShakeBloc bloc;

  // setUp(() {
  //     bloc = ShakeModule.to.get<ShakeBloc>();
  // });

  // group('ShakeBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ShakeBloc>());
  //   });
  // });
}
