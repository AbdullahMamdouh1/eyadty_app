import 'package:flutter/material.dart';

class EndText extends StatelessWidget {
  const EndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {}, // أضف وظيفة الشروط والأحكام هنا
            child: Text(
              "Terms & Conditions",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Text("|", style: TextStyle(color: Colors.grey)),
          TextButton(
            onPressed: () {}, // أضف وظيفة سياسة الخصوصية هنا
            child: Text(
              "Privacy Policy",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
