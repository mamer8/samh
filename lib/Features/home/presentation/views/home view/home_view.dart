import 'package:samh_task/core/app_export.dart';

import '../../../../../core/widgets/custom_drawer.dart';
import 'widget/home_view_body.dart';


class HomeView extends StatefulWidget {
   HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      body: SafeArea(child: HomeViewBody(onPressedMenu:() => _scaffoldKey.currentState!.openDrawer())),
    );
  }
}
