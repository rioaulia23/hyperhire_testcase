import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookmarkIcon extends StatefulWidget {
  const BookmarkIcon({super.key});

  @override
  State<BookmarkIcon> createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BookmarkIcon> {
  bool isBookmarked = false; // State to track if the icon is active or inactive

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Toggle the bookmark state
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
      child: Icon(
        isBookmarked
            ? Icons.bookmark
            : Icons.bookmark_border, // Toggle between filled and outline icons
        size: 24.w,
        color: isBookmarked
            ? Colors.amber
            : Colors.grey, // Change color based on state
      ),
    );
  }
}
