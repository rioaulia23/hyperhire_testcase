import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/image_constants.dart';
import 'package:testcase/features/home/ui/widgets/product_card_widget.dart';

import 'package:testcase/models/product/product_model.dart';

class RankingSection extends StatelessWidget {
  final List<Product> products = [
    Product(
      rank: 1,
      image: ImageConstants.tv,
      title: 'LG전자 스탠바이미 27ART10AKPL',
      description: '화면을 이동할 수 있고 전환도 편리하다...\n스탠바이미는 사람입니다!',
      rating: 4.89,
      category: 'LG전자 편리성',
      reviewCount: 216,
      tag: ['LG전자', '편리성'],
    ),
    Product(
      rank: 2,
      image: ImageConstants.tv1,
      title: 'LG전자 울트라HD 75UP8300KNA',
      description: '화면 잘 나오고... 리모컨 기능 좋습니다.\n넷물 아마폰 등 버튼하나로 바로 접속 되...',
      rating: 4.36,
      category: 'LG전자 고화질',
      reviewCount: 136,
      tag: ['LG전자', '고화질'],
    ),
    Product(
      rank: 3,
      image: ImageConstants.tv2,
      title: '라익미 스마트 DS4001L NETRANGE',
      description: '반응속도 및 화질이나 여러면에서도 부족...\n중소기업TV 라익미 제품을 사용해보았...',
      rating: 3.98,
      category: '라익미 가성비',
      reviewCount: 98,
      tag: ['라익미', '가성비'],
    ),
  ];

  RankingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    Text(
                      '제일 핫한 리뷰를 만나보세요',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.5,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '리뷰️  랭킹⭐ top 3',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -1,
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
            ...products.map((product) {
              return Column(
                children: [
                  ProductCardWidget(product: product),
                  SizedBox(height: 16.h),
                ],
              );
            }),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
