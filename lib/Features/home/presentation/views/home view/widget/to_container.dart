import '../../../../../../core/app_export.dart';
import 'custom_dropdown_column.dart';

class ToContainer extends StatelessWidget {
  const ToContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit =HomeCubit.get(context);
    List<DropdownMenuItem<String>> items = [
      DropdownMenuItem<String>(
        value: AppStrings.cairo(context),
        onTap: () {
          cubit.toShort = 'CAI';
        },
        child: Text(AppStrings.cairo(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: AppStrings.riyadh(context), onTap: () {
        cubit.toShort = 'RYD';
      },
        child: Text(AppStrings.riyadh(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: AppStrings.mecca(context), onTap: () {
        cubit.toShort = 'MCA';
      },
        child: Text(AppStrings.mecca(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: AppStrings.jeddah(context), onTap: () {
        cubit.toShort = 'JDA';
      },
        child: Text(AppStrings.jeddah(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
    ];
    return CustomDropDownColumn(
      type: 'to',
      items: items,
      text: AppStrings.to(context),
    );
  }
}
