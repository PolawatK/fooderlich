import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  final String title = 'Smoothies';
  final String recipe = 'Recipe';
  final String name = 'Mike Katz';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/booba.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: FooderlichTheme.lightTextTheme.titleLarge,
                        ),
                        Text(
                          "Smoothie Connoisseur",
                          style: FooderlichTheme.lightTextTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Positioned(
              left: 5,
              bottom: 50,
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  title,
                  style: FooderlichTheme.lightTextTheme.displayLarge,
                ),
              ),
            ),

            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                recipe,
                style: FooderlichTheme.lightTextTheme.displayLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
