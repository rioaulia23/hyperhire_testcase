import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';

class RoundedDropdown extends StatefulWidget {
  const RoundedDropdown({super.key});

  @override
  State<RoundedDropdown> createState() => _RoundedDropdownState();
}

class _RoundedDropdownState extends State<RoundedDropdown> {
  String? selectedValue; // Selected value in the dropdown
  final List<String> items = ['최신순', '전달']; // Only two options

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 69.w, // Fixed width of 64
      height: 23.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the dropdown
        borderRadius: BorderRadius.circular(25), // Rounded corners
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
        isExpanded: true, // Make the dropdown take up the full width
        underline: const SizedBox(), // Remove the default underline
        icon: Icon(
          Icons.arrow_drop_down,
          size: 10.w,
          color: Colors.grey[700],
        ),
        hint: Text(
          '최신순', // Default hint text
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
