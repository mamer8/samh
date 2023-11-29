import '../../../../../../core/app_export.dart';
import 'package:intl/intl.dart';
class DepartureContainer extends StatelessWidget {
   DepartureContainer({super.key});
  var datecontroller = TextEditingController();

  var taskdate;

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(AppStrings.departure(context),style: getRegularStyle(color: ColorManager.primaryGrey),),
          SizedBox(
            width: MediaQuery.sizeOf(context).width/3,
            child: TextFormField(

              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.parse(
                      '2025-02-27'),
                ).then((value) {
                  taskdate = DateFormat.yMMMd()
                      .format(value!);

                  datecontroller.text = taskdate;
                  cubit.departure =datecontroller.text;

                }).catchError((error) {
                  print(
                      'Errooor ${error.toString()}');
                });
              },
              controller: datecontroller,
              readOnly: true,
              onTapOutside: (event){
                FocusManager.instance.primaryFocus?.unfocus();

              },
              style: getRegularStyle(color: ColorManager.primary),


            ),
          ),
        ],
      ),
    );
  }
}
