import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),

        // Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "everyone flies.. some fly longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // Hot items
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                name: "Air Jordan",
                price: "200",
                imagePath: "lib/images/shoe_red.png",
                description: "cool shoe",
              );
              return ShoeTile(shoe: shoe);
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
