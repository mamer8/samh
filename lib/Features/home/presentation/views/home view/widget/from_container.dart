import '../../../../../../core/app_export.dart';
import 'custom_dropdown_column.dart';

class FromContainer extends StatelessWidget {
  const FromContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit =HomeCubit.get(context);
    List<DropdownMenuItem<String>> items = [
      DropdownMenuItem<String>(
        value: AppStrings.cairo(context),
        onTap: () {
          cubit.fromShort = 'CAI';
        },
        child: Text(AppStrings.cairo(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: AppStrings.riyadh(context), onTap: () {
        cubit.fromShort = 'RYD';
      },
        child: Text(AppStrings.riyadh(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: AppStrings.mecca(context), onTap: () {
        cubit.fromShort = 'MCA';
      },
        child: Text(AppStrings.mecca(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
      DropdownMenuItem<String>(
        value: AppStrings.jeddah(context), onTap: () {
        cubit.fromShort = 'JDA';
      },
        child: Text(AppStrings.jeddah(context),style: getRegularStyle(color: ColorManager.primary),),
      ),
    ];
    return CustomDropDownColumn(
      type: 'from',
      items: items,
      text: AppStrings.from(context),
    );
  }
}
