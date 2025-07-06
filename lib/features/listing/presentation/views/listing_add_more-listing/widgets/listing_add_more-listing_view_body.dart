import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../widgets/item_listing.dart';
import '../../widgets/title_text.dart';

class ListingAddMoreListingViewBody extends StatelessWidget {
  const ListingAddMoreListingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          TitleText(
            title: 'Manage Your Clinics',
            subTitle: 'View, edit, and grow your clinic’s online presence. ',
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
              width: 220,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: CustomButton(
                    onPressed: () {
                      context.push(Routes.listingAddListStep1View);
                    },
                    text: 'Add Your First Clinic',
                    image: AppImages.imagesPlus,
                    color: AppColors.greenColor,
                  ))),
          SizedBox(
            height: 24,
          ),
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Current Plan",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ItemListing(
                    title: 'Clinic Name',
                    subTitle:
                        'Orthodentist | 21 Makram Ebeid, Nasr City, Cairo, Egyot',
                    price: '50',
                    image: AppImages.imagesImageteeth,
                    customButton: CustomButton(
                        onPressed: () {},
                        Width: 90,
                        text: "Edit ",
                        image: AppImages.imagesClose,
                        color: AppColors.greenColor),
                    Width: 320,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ItemListing(
                    title: 'Clinic Name',
                    subTitle:
                        'Orthodentist | 21 Makram Ebeid, Nasr City, Cairo, Egyot',
                    price: '50',
                    image: AppImages.imagesImageteeth,
                    customButton: CustomButton(
                        onPressed: () {},
                        Width: 180,
                        text: "Manage Listing ",
                        image: AppImages.imagesClose,
                        color: AppColors.greenColor),
                    Width: 320,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ItemListing(
                    title: 'Clinic Name',
                    subTitle:
                        'Orthodentist | 21 Makram Ebeid, Nasr City, Cairo, Egyot',
                    price: '50',
                    image: AppImages.imagesImage,
                    customButton: CustomButton(
                        onPressed: () {},
                        Width: 140,
                        text: "Resubmit ",
                        image: AppImages.imagesClose,
                        color: AppColors.greenColor),
                    Width: 320,
                    color: Color(0xFFD9D9D9),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ItemListing(
                    title: 'Add a Clinic',
                    subTitle:
                        'Start building your presence by adding your first clinic today!',
                    price: '50',
                    image: AppImages.imagesImage,
                    customButton: CustomButton(
                        onPressed: () {},
                        text: "Add A Clinic",
                        Width: 160,
                        image: AppImages.imagesClose,
                        color: AppColors.greenColor),
                    Width: 280,
                    color: Color(0xFFD9D9D9),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
