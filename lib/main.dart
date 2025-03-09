 import 'package:flutter/material.dart';


 import 'features/listing/presentation/views/listing_add_list_step1/listing_add_list_step1_view.dart';
import 'features/listing/presentation/views/listing_add_more-listing/listing_add_more-listing_view.dart';

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
      home: ListingAddListStep1View(),
    );
  }
}

