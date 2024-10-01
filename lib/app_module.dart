import 'package:flutter_modular/flutter_modular.dart';
import 'package:native_studies/core/native_plugin.dart';

import 'core/core.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);

    i.addSingleton<NativePlugin>(() => NativePlugin.instance);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child('/', child: (context) => const HomePage());
  }
}
