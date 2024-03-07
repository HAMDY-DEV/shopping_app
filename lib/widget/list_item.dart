import 'package:flutter/material.dart';
import 'package:shopping_app/colors/color_app.dart';
import 'package:shopping_app/models/cart_model.dart';

class ListItem extends StatelessWidget {
  ListItem({
    super.key,
    required this.name,
    required this.image,
    required this.money,
  });
  String name;
  String image;
  String money;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
              borderRadius: BorderRadius.circular(20)),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Color(0xff999999), fontFamily: 'NunitoSans'),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              money,
              style: const TextStyle(
                  fontFamily: 'NunitoSans', fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 23,
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  decoration: BoxDecoration(
                      color: AppColor.placeholder,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.add),
                ),
                const Text('01'),
                IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
              ],
            ),
          ],
        ),
        Expanded(
          child: Image.asset('assets/images/Shape.png'),
        ),
      ],
    );
  }
}
