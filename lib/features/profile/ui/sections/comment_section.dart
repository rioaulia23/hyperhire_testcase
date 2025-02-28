import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/constants/icon_constants.dart';
import 'package:testcase/constants/image_constants.dart';
import 'package:testcase/features/profile/ui/widgets/bookmark_widget.dart';
import 'package:testcase/shared_widgets/svg_icon.dart';

class CommentSection extends StatelessWidget {
  final String name;
  final String rank;
  final String image;

  CommentSection(
      {super.key, required this.name, required this.rank, required this.image});

  final List<String> reviewImages = [
    ImageConstants.reviewImage1,
    ImageConstants.reviewImage2,
    ImageConstants.reviewImage3,
  ];

  final List<String> comment = [
    '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
    '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.'
  ];

  final List<String> tag = [
    '“가격 저렴해요”',
    '“CPU온도 고온”',
    '“서멀작업 가능해요”',
    '“게임 잘 돌아가요”',
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(image),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              glow: true,
                              initialRating: 4.07,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20.w,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              ignoreGestures: true,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              '2022.12.09',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                color: ColorConstants.demiGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const BookmarkIcon(),
              ],
            ),
            SizedBox(
              height: 50.h,
              width: ScreenUtil().screenWidth,
              child: ListView.builder(
                  itemCount: tag.length,
                  padding: EdgeInsets.only(left: 15.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(
                          tag[index],
                          style: TextStyle(
                              color: ColorConstants.demiGrey,
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 20.w,
                        )
                      ],
                    );
                  }),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: comment.length,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.flash_on_rounded,
                      size: 16.w,
                      color: index == 0 ? Colors.blue : Colors.grey,
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Text(
                        comment[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                );
              },
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 80.h,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: reviewImages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 10.w),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              insetPadding: const EdgeInsets.all(20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  reviewImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          reviewImages[index],
                          height: 70.h,
                          width: 73.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(
              color: ColorConstants.liteGrey,
            ),
            Row(
              children: [
                const SvgIcon(icon: IconConstants.iconChat),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  '댓글 달기..',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
