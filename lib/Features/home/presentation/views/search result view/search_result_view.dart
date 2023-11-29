import 'package:samh_task/core/app_export.dart';

import 'widget/search_result_view_body.dart';




class SearchResultView extends StatelessWidget {
  const SearchResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      body: SafeArea(child: SearchResultViewBody()),
    );
  }
}
