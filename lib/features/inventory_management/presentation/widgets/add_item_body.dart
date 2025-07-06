import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/inventory_management/presentation/widgets/add_item_second_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../promotions/presentation/widgets/custom_bottom_option.dart';
import '../../../promotions/presentation/widgets/new_campaign_item.dart';
import '../../../promotions/presentation/widgets/new_campaign_item_container.dart';

class AddItemBody extends StatelessWidget {
  const AddItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(56),
              NewCampaignItem(
                title: 'Name',
                child: NewCampaignItemContainer(
                  text: "Ex: Dental Mirror",
                ),
              ),
              sizedBox,
              NewCampaignItem(
                title: 'SKU',
                child: NewCampaignItemContainer(
                  text: "123",
                ),
              ),
              sizedBox,
              NewCampaignItem(
                title: 'category',
                child: NewCampaignItemContainer(
                  text: "category",
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
              AddItemSecondColumn(),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Column(
              children: [
                verticalSpace(24),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width * 0.6),
                  child: CustomBottomOption(
                    text: 'Upload Your Image',
                    imagePath: AppImages.imagesUpload,
                    background: Color(0xffE0E3E7),
                    textColor: AppColors.black,
                    borderColor: Color(0xff736F9F),
                    onPressed: () {
                      // context.push(Routes.campaignHistory);
                    },
                  ),
                ),
                verticalSpace(80),
              ],
            )),
      ],
    );
  }
}
