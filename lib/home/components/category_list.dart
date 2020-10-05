import 'package:LiciousAfroDeli/constants.dart';
import 'package:LiciousAfroDeli/models/product_model.dart';
import 'package:LiciousAfroDeli/screens/details-screen.dart';
import 'package:LiciousAfroDeli/widgets/liciousafrodeli_card.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _currentTab;

  @override
  initState() {
    super.initState();
    _currentTab = 0;
  }

  List<String> _categories = [
    'Combo Meals',
    ' Soups',
    'Barbecues & Suya',
    'Juices & Smoothies'
  ];

  // Data Lists
  List<FoodProduct> comboMeals = [
    FoodProduct(
      categories: 'Combo Meals',
      nameOfFood: 'Rice And Beans',
      ratings: '4.7',
      description: 'Hot Rice And Beans With Chinese Sauce',
      imagePath: 'assets/images/dinner_served.png',
      price: '6.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '30-40 min',
    ),
    FoodProduct(
      categories: 'Combo Meals',
      nameOfFood: 'Yam And Eggs',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '11.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Barbecues & Suya',
      nameOfFood: 'Yam And Eggs',
      ratings: '5.0',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/breakfast_in_bed.png',
      price: '14.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Soups',
      nameOfFood: 'Yam And Eggs',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '4.99',
      ratings: '4.6',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    )
  ];
  List<FoodProduct> soups = [
    FoodProduct(
      categories: 'Soups',
      nameOfFood: 'Okro Soup',
      ratings: '4.7',
      description: 'Hot Rice And Beans With Chinese Sauce',
      imagePath: 'assets/images/dinner_served.png',
      price: '6.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '30-40 min',
    ),
    FoodProduct(
      categories: 'Soups',
      nameOfFood: 'Oha',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '11.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Soups',
      nameOfFood: 'BitterLeaf Soup',
      ratings: '5.0',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/breakfast_in_bed.png',
      price: '14.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Soups',
      nameOfFood: 'Egusi',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '4.99',
      ratings: '4.6',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    )
  ];
  List<FoodProduct> barbecuesAndSuya = [
    FoodProduct(
      categories: 'Barbecues & Suya',
      nameOfFood: 'Rice And Beans',
      ratings: '4.7',
      description: 'Hot Rice And Beans With Chinese Sauce',
      imagePath: 'assets/images/dinner_served.png',
      price: '6.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '30-40 min',
    ),
    FoodProduct(
      categories: 'Barbecues & Suya',
      nameOfFood: 'Yam And Eggs',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '11.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Barbecues & Suya',
      nameOfFood: 'meat',
      ratings: '5.0',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/breakfast_in_bed.png',
      price: '14.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Barbecues & Suya',
      nameOfFood: 'Meat',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '4.99',
      ratings: '4.6',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    )
  ];
  List<FoodProduct> juicesAndSmoothies = [
    FoodProduct(
      categories: 'Juices & Smoothies',
      nameOfFood: 'Orange Juice',
      ratings: '4.7',
      description: 'Hot Rice And Beans With Chinese Sauce',
      imagePath: 'assets/images/dinner_served.png',
      price: '6.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '30-40 min',
    ),
    FoodProduct(
      categories: 'Juices & Smoothies',
      nameOfFood: 'Banana Smoothie',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '11.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Juices & Smoothies',
      nameOfFood: 'Mango Juice',
      ratings: '5.0',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/breakfast_in_bed.png',
      price: '14.99',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    ),
    FoodProduct(
      categories: 'Juices & Smoothies',
      nameOfFood: 'Mixed Friuts Smoothie',
      description: 'Yam and Scrambled eggs',
      imagePath: 'assets/images/boiled_eggs.png',
      price: '4.99',
      ratings: '4.6',
      details:
          'chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons',
      time: '20-30 min',
    )
  ];

  Widget _buildtabs(int i) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
        setState(() {
          _currentTab = i;
        });
        print(_currentTab);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              _categories[i],
              style: _currentTab == i
                  ? TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
            ),
            if (_currentTab == i)
              Container(
                margin: EdgeInsets.symmetric(vertical: 3),
                height: 3,
                width: 24,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _categories
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildtabs(map.key))
                  .toList()),
        ),
        if (_currentTab == 0)
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            padding: const EdgeInsets.only(
              left: 12.0,
            ),
            height: 250,
            child: ListView.builder(
                itemCount: comboMeals.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return LiciousAfroDeliCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsScreen(comboMeals[index]);
                          },
                        ),
                      );
                    },
                    category: comboMeals[index].categories,
                    imagePath: comboMeals[index].imagePath,
                    description: comboMeals[index].description,
                    nameOfFood: comboMeals[index].nameOfFood,
                    price: comboMeals[index].price,
                  );
                }),
          ),
        if (_currentTab == 1)
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            padding: const EdgeInsets.only(
              left: 12.0,
            ),
            height: 250,
            child: ListView.builder(
                itemCount: soups.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return LiciousAfroDeliCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsScreen(soups[index]);
                          },
                        ),
                      );
                    },
                    category: soups[index].categories,
                    imagePath: soups[index].imagePath,
                    description: soups[index].description,
                    nameOfFood: soups[index].nameOfFood,
                    price: soups[index].price,
                  );
                }),
          ),
        if (_currentTab == 2)
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            padding: const EdgeInsets.only(
              left: 12.0,
            ),
            height: 250,
            child: ListView.builder(
                itemCount: barbecuesAndSuya.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return LiciousAfroDeliCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsScreen(barbecuesAndSuya[index]);
                          },
                        ),
                      );
                    },
                    category: barbecuesAndSuya[index].categories,
                    imagePath: barbecuesAndSuya[index].imagePath,
                    description: barbecuesAndSuya[index].description,
                    nameOfFood: barbecuesAndSuya[index].nameOfFood,
                    price: barbecuesAndSuya[index].price,
                  );
                }),
          ),
        if (_currentTab == 3)
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            padding: const EdgeInsets.only(
              left: 12.0,
            ),
            height: 250,
            child: ListView.builder(
                itemCount: juicesAndSmoothies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return LiciousAfroDeliCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsScreen(juicesAndSmoothies[index]);
                          },
                        ),
                      );
                    },
                    category: juicesAndSmoothies[index].categories,
                    imagePath: juicesAndSmoothies[index].imagePath,
                    description: juicesAndSmoothies[index].description,
                    nameOfFood: juicesAndSmoothies[index].nameOfFood,
                    price: juicesAndSmoothies[index].price,
                  );
                }),
          ),
      ],
    );
  }
}
