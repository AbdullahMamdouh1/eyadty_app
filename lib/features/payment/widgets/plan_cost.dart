import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_shape.dart';

class PlanCost extends StatelessWidget {
  const PlanCost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: CustomContainerShape(
            Child: Padding(
          padding:
              const EdgeInsets.only(right: 21.0, left: 21, bottom: 21, top: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Plan \nCost  ",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 70,
                    child: buildVerticalDivider(),
                  ),
                  Text("120 \$"),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  Text(
                    "Disc\nount  ",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 70,
                    child: buildVerticalDivider(),
                  ),
                  Text("N/A"),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  Text(
                    "Taxes\n &\n Fees",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 90,
                    child: buildVerticalDivider(),
                  ),
                  Text("N/A"),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  Text(
                    "Total ",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 70,
                    child: buildVerticalDivider(),
                  ),
                  Text("120 \$"),
                ],
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.edit_outlined),
                      SizedBox(
                        width: 7,
                      ),
                      Text("Edit Plan"),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFE0E3E7),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text("Back to Plan Selection"),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  VerticalDivider buildVerticalDivider() {
    return VerticalDivider(
      color: Colors.grey,
      thickness: 2,
      width: 20,
      indent: 10,
      endIndent: 10,
    );
  }
}
