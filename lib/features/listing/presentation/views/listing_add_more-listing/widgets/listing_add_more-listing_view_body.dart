import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../generated/assets.dart';
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
            Title: 'Manage Your Clinics',
            SubTitle: 'View, edit, and grow your clinic’s online presence. ',
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
              width: 195,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: CustomButton(
                    onPressed: () {},
                    text: 'Add Your First Clinic',
                    image: Assets.imagesPlus,
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
                    style: TextStyles.bold18,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ItemListing(
                    title: 'Clinic Name',
                    subTitle:
                        'Orthodentist | 21 Makram Ebeid, Nasr City, Cairo, Egyot',
                    price: '50',
                    image: Assets.imagesImageteeth,
                    customButton: Padding(
                      padding: const EdgeInsets.only(right: 210.0),
                      child: CustomButton(
                          onPressed: () {},
                          text: "Edit ",
                          image: Assets.imagesClose,
                          color: AppColors.greenColor),
                    ),
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
                    image: Assets.imagesImageteeth,
                    customButton: Padding(
                      padding: const EdgeInsets.only(right: 135.0),
                      child: CustomButton(
                          onPressed: () {},
                          text: "Manage Listing ",
                          image: Assets.imagesClose,
                          color: AppColors.greenColor),
                    ),
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
                    image: Assets.imagesImage,
                    customButton: Padding(
                      padding: const EdgeInsets.only(right: 160.0),
                      child: CustomButton(
                          onPressed: () {},
                          text: "Resubmit ",
                          image: Assets.imagesClose,
                          color: AppColors.greenColor),
                    ),
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
                    image: Assets.imagesImage,
                    customButton: Padding(
                      padding: const EdgeInsets.only(right: 120.0),
                      child: CustomButton(
                          onPressed: () {},
                          text: "Add A Clinic",
                          image: Assets.imagesClose,
                          color: AppColors.greenColor),
                    ),
                    Width: 280,
                    color: Color(0xFFD9D9D9),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Height: 2000,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
