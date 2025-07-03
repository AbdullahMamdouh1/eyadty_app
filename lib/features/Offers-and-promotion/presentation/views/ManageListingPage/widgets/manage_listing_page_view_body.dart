import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../listing/presentation/views/widgets/item_listing.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';

class ManageListingPageViewBody extends StatelessWidget {
  const ManageListingPageViewBody({super.key});

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
            SubTitle: 'View, edit, and grow your clinic’s online presence.  ',
          ),
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
                    "Your Active Clinics",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: ItemListing(
                            title: 'Clinic Name',
                            subTitle:
                                'Orthodentist | 21 Makram Ebeid, Nasr City, Cairo, Egyot',
                            price: '50',
                            image: AppImages.imagesImageteeth,
                            customButton: Padding(
                              padding: const EdgeInsets.only(right: 100.0),
                              child: CustomButton(
                                  onPressed: () {
                                    context.push(Routes.clinicListingPageView);
                                  },
                                  text: "Manage Listing ",
                                  image: AppImages.imagesClose,
                                  color: AppColors.greenColor),
                            ),
                            Width: 320,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
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
