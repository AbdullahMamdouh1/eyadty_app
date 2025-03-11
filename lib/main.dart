 import 'package:eyadty_app/features/listing/presentation/views/listing_add_list_step2/listing_add_list_step2_view.dart';
import 'package:flutter/material.dart';


 import 'features/Offers-and-promotion/presentation/views/Listing-Manage-Listing/listing_anage_listing_view.dart';
import 'features/listing/presentation/views/listing_add_list_step1/listing_add_list_step1_view.dart';
import 'features/listing/presentation/views/listing_add_list_step3/listing_add_list_step3_view.dart';
import 'features/listing/presentation/views/listing_add_list_step4/listing_add_list_step4_view.dart';
import 'features/listing/presentation/views/listing_add_list_step5/listing_add_list_step5_view.dart';
import 'features/listing/presentation/views/listing_add_more-listing/listing_add_more-listing_view.dart';
import 'features/listing/presentation/views/payout_dashboard/payout_dashboard_view.dart';
import 'features/listing/presentation/views/widgets/dialog_payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListingAnageListingView() ,
    );
  }
}

