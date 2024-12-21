//  Expanded(
//                 child: GridView.builder(
//                   physics: const BouncingScrollPhysics(),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     childAspectRatio: 2 / 3.7,
//                   ),
//                   itemCount: books.length,
//                   itemBuilder: (context, idx) {
//                     final book = books[idx];
//                     return Container(
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black)),
//                       width: 165.w,
//                       child: Column(
//                         children: [
//                           Container(
//                             width: 165.w,
//                             height: 226.h,
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(12.r),
//                               child: Image.asset(
//                                 Assets.images.e5.path,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 8.h),
//                           Text(
//                             "One Hundred Years of Solitude",
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextFontStyle.textStyle14c212121UrbanistW600,
//                           ),
//                           UIHelper.verticalSpace(6),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(Icons.star,
//                                       color: AppColors.c4B586B, size: 14.sp),
//                                   SizedBox(width: 4.w),
//                                   Text(
//                                     5.toStringAsFixed(1),
//                                     style: TextFontStyle
//                                         .textStyle10c4B586BUrbanistW500,
//                                   ),
//                                 ],
//                               ),
//                               Text(
//                                 "\$${78.toStringAsFixed(2)}",
//                                 style: TextFontStyle
//                                     .textStyle10c4B586BUrbanistW500,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),




//dummy custom card
      // Container(
      //           decoration:
      //               BoxDecoration(border: Border.all(color: Colors.black)),
      //           width: 165.w,
      //           child: Column(
      //             children: [
      //               Container(
      //                 width: 165.w,
      //                 height: 226.h,
      //                 child: ClipRRect(
      //                   borderRadius: BorderRadius.circular(12.r),
      //                   child: Image.asset(
      //                     Assets.images.e5.path,
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(height: 8.h),
      //               Text(
      //                 "One Hundred Years of Solitude",
      //                 maxLines: 2,
      //                 overflow: TextOverflow.ellipsis,
      //                 style: TextFontStyle.textStyle14c212121UrbanistW600,
      //               ),
      //               UIHelper.verticalSpace(6),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Row(
      //                     children: [
      //                       Icon(Icons.star,
      //                           color: AppColors.c4B586B, size: 14.sp),
      //                       SizedBox(width: 4.w),
      //                       Text(
      //                         5.toStringAsFixed(1),
      //                         style:
      //                             TextFontStyle.textStyle10c4B586BUrbanistW500,
      //                       ),
      //                     ],
      //                   ),
      //                   Text(
      //                     "\$${78.toStringAsFixed(2)}",
      //                     style: TextFontStyle.textStyle10c4B586BUrbanistW500,
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),