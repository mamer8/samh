import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../../../../core/app_export.dart';

class CustomDropDownColumn extends StatefulWidget {
  const CustomDropDownColumn({super.key, this.items, required this.text, required this.type,});
  final String text;
  final String type;
  final List<DropdownMenuItem<String>>? items;
  @override
  State<CustomDropDownColumn> createState() => _CustomDropDownColumnState();
}

class _CustomDropDownColumnState extends State<CustomDropDownColumn> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    var cubit =HomeCubit.get(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(widget.text,style: getRegularStyle(color: ColorManager.primaryGrey),),
      DropdownButton2<String>(



        value: dropdownValue,

        style: getRegularStyle(),
        onChanged: (String? value) {

          switch (widget.type) {
          case 'from':
         cubit.from = value!;
          break;
          case 'to':
            cubit.to = value!;
          break;
          case 'adult':
            cubit.adults = value!;
          break;
          case 'children':
            cubit.children = value!;
          break;
          }



          setState(() {


            dropdownValue = value!;


          });
        },
        items: widget.items ,


      ),

    ],);
  }
}
