import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/Offers/presentation/views/CreateOfferPage/widgets/upload_promotional_banner.dart'
    show UploadPromotionalBanner;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/style/app_style.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../promotions/presentation/widgets/new_campaign_item.dart';
import '../../../../../promotions/presentation/widgets/new_campaign_item_container.dart';
import 'create_offer_second_column.dart';

class CreateOfferFirstColumn extends StatelessWidget {
  const CreateOfferFirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 44.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(24),
              Text(
                "Offer Details",
                style: AppStyle.campaignSteps,
              ),
              sizedBox,
              NewCampaignItem(
                title: 'Promotion Title',
                child: NewCampaignItemContainer(
                  text: "10% Off for First-Time Patients",
                ),
              ),
              sizedBox,
              NewCampaignItem(
                title: 'Applicable Clinics',
                child: NewCampaignItemContainer(
                  text: "Select clinics",
                  suffix: Transform.rotate(
                    angle: 4.7,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 16.sp,
                    ),
                  ),
                ),
              ),
              sizedBox,
              NewCampaignItem(
                title: 'Description',
                child: NewCampaignItemContainer(
                  text: "Describe your promotion here...",
                  maxLines: 3,
                  suffix: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Transform.translate(
                        offset: const Offset(0, 0),
                        child: SvgPicture.asset(
                          AppImages.drag,
                          height: 24.h,
                          width: 24.w,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              sizedBox,
              CreateOfferSecondColumn(),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Column(
              children: [
                verticalSpace(24),
                UploadPromotionalBanner(),
                verticalSpace(80),
              ],
            )),
      ],
    );
  }
}
