import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';

class RoundedDropdown extends StatefulWidget {
  const RoundedDropdown({super.key});

  @override
  State<RoundedDropdown> createState() => _RoundedDropdownState();
}

class _RoundedDropdownState extends State<RoundedDropdown> {
  String? selectedValue;
  final List<String> items = ['KOR', 'ENG'];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 64.w,
      height: 20.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: ColorConstants.bgGrey,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: ColorConstants.demiGrey,
          width: 1.w,
        ),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
        },
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10.sp,
                color: Colors.grey[700],
              ),
            ),
          );
        }).toList(),
        isExpanded: true,
        underline: const SizedBox(),
        icon: Icon(
          Icons.arrow_drop_down,
          size: 10.w,
          color: Colors.grey[700],
        ),
        hint: Text(
          'KOR',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
