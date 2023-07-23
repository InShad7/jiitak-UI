import 'package:flutter/material.dart';
import 'package:jiitak/view/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.title, this.hint});

  final title;
  final hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      height: mHeight! / 9,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: black,
                    fontSize: 18,
                  ),
                ),
                const TextSpan(
                  text: '*',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          CustomField(hint: hint),
        ],
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  const CustomField({super.key, this.hint, this.amount = false});

  final hint;
  final amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight! / 21,
      width: amount ? mWidth! / 2.5 : mWidth,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: grey,
          width: 1,
        ),
      ),
      child: TextFormField(
        // controller: controller,
        style: const TextStyle(color: black, fontSize: 18),
        cursorColor: black,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
