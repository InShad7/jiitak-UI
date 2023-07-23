import 'package:flutter/material.dart';
import 'package:jiitak/view/home_screen/widget/home_card.dart';
import 'package:jiitak/view/utils/utils.dart';

class DropdownRow extends StatefulWidget {
  const DropdownRow({super.key, this.category = false});
  final category;

  @override
  _DropdownRowState createState() => _DropdownRowState();
}

class _DropdownRowState extends State<DropdownRow> {
  String? selectedItem1;
  String? selectedItem2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 45,
          width: widget.category ? mWidth / 1.7 : mWidth! / 3,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: grey,
              width: 1.0,
            ),
          ),
          child: DropdownButton<String>(
            value: selectedItem1,
            onChanged: (newValue) {
              setState(() {
                selectedItem1 = newValue;
              });
            },
            items: [
              DropdownMenuItem(
                value: widget.category ? '料理カテゴリー選択' : '11 : 00',
                child: Text(
                  widget.category ? '料理カテゴリー選択' : '11 : 00',
                ),
              ),
              DropdownMenuItem(
                value: widget.category ? '料理カテゴリー' : '12 : 00',
                child: Text(
                  widget.category ? '料理カテゴリー' : '12 : 00',
                ),
              ),
              DropdownMenuItem(
                value: widget.category ? '料理カテゴ選択' : '01 : 00',
                child: Text(
                  widget.category ? '料理カテゴ選択' : '01 : 00',
                ),
              ),
            ],
            hint: CustomText(
              title: widget.category ? '料理カテゴリー選択' : '11 : 00',
              fontsize: 20,
              color: black,
            ),
            underline: Container(),
            icon: const Icon(Icons.keyboard_arrow_down, color: grey),
          ),
        ),
        widget.category
            ? SizedBox()
            : const CustomText(
                title: '~',
                fontsize: 20,
                color: black,
              ),
        widget.category
            ? SizedBox()
            : Container(
                height: 45,
                width: mWidth! / 3,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: grey,
                    width: 1.0,
                  ),
                ),
                child: DropdownButton<String>(
                  value: selectedItem2,
                  onChanged: (newValue) {
                    setState(() {
                      selectedItem2 = newValue;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      value: '21 : 00',
                      child: Text('21 : 00'),
                    ),
                    DropdownMenuItem(
                      value: '22 : 00',
                      child: Text('22 : 00'),
                    ),
                    DropdownMenuItem(
                      value: '23 : 00',
                      child: Text('23 : 00'),
                    ),
                  ],
                  hint: const CustomText(
                    title: '20 : 00',
                    fontsize: 20,
                    color: black,
                  ),
                  underline: Container(),
                  icon: const Icon(Icons.keyboard_arrow_down, color: grey),
                ),
              ),
      ],
    );
  }
}
