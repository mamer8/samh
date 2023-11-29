import 'dart:io';

import 'core/app_export.dart';
import 'core/my_app.dart';
import 'core/utils/bloc_observed.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  DioClient.init();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}
