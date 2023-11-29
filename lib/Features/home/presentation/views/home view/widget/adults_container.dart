import '../../../../../../core/app_export.dart';
import 'custom_dropdown_column.dart';

class AdultsContainer extends StatelessWidget {
  const AdultsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> items =  [
      DropdownMenuItem<String>(
        value: "0",
        child: Text('0',style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: "1",
        child: Text('1',style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: "2",
        child: Text('2',style: getRegularStyle(color: ColorManager.primary),),
      ),
    ];
    return CustomDropDownColumn(
      type: 'adult',
      items: items,
      text: AppStrings.adults(context),
    );
  }
}
