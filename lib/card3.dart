import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  final List<String> tags = const [
    'Healthy',
    'Vegan',
    'Carrots',
    'Greens',
    'Wheat',
    'Pescetarian',
    'Mint',
    'Lemongrass',
    'Salad',
    'Water',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('assets/images/Carrot.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Container(color: Colors.black.withOpacity(0.6)),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.bookmark_border, color: Colors.white),

                    const SizedBox(height: 8),

                    const Text(
                      'Recipe Trends',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: tags
                          .map(
                            (tag) => Chip(
                              label: Text(tag),
                              backgroundColor: const Color.fromARGB(
                                255,
                                43,
                                43,
                                43,
                              ).withOpacity(0.9),
                              labelStyle: const TextStyle(color: Colors.white),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
