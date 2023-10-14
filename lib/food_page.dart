import 'package:flutter/material.dart';
import 'package:food_app/components/food_appbar.dart';
import 'package:food_app/components/food_categories.dart';
import 'package:food_app/components/food_info.dart';
import 'package:food_app/components/menu_card.dart';
import 'package:food_app/models/menu.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final scrollController = ScrollController();

  int selectedCategoryIndex = 0;

  double foodInfoHeight = 200 + 170 - kToolbarHeight;

  @override
  void initState() {
    createBreackPoints();
    scrollController.addListener(() {
      updateCategoryIndexScroll(scrollController.offset);
    });
    super.initState();
  }

  void scrollToCategory(int index) {
    if (selectedCategoryIndex != index) {
      int totalItems = 0;

      for (var i = 0; i < index; i++) {
        totalItems += demoCategoryMenus[i].items.length;
      }
      scrollController.animateTo(
        foodInfoHeight + (116 * totalItems) + (50 * index),
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      setState(() {
        selectedCategoryIndex = index;
      });
    }
  }

  List<double> breackPoints = [];
  void createBreackPoints() {
    double firstBreackPoints =
        foodInfoHeight + 50 + (116 * demoCategoryMenus[0].items.length);

    breackPoints.add(firstBreackPoints);

    for (var i = 1; i < demoCategoryMenus.length; i++) {
      double breackPoint =
          breackPoints.last + 50 + (116 * demoCategoryMenus[i].items.length);
      breackPoints.add(breackPoint);
    }
  }

  void updateCategoryIndexScroll(double offset) {
    for (var i = 0; i < demoCategoryMenus.length; i++) {
      if (i == 0) {
        if ((offset < breackPoints.first) & (selectedCategoryIndex != 0)) {
          setState(() {
            selectedCategoryIndex = 0;
          });
        }
      } else if ((breackPoints[i - 1] <= offset) & (offset < breackPoints[i])) {
        if (selectedCategoryIndex != i) {
          setState(() {
            selectedCategoryIndex = i;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          FoodAppBar(),
          SliverToBoxAdapter(
            child: FoodInfo(),
          ),
          SliverPersistentHeader(
            delegate: FoodCategories(
              onChanged: scrollToCategory,
              selectedIndex: selectedCategoryIndex,
            ),
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, categoryIndex) {
                  List<Menu> items = demoCategoryMenus[categoryIndex].items;
                  return MenuCategoryItem(
                    title: demoCategoryMenus[categoryIndex].category,
                    items: List.generate(
                        items.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: MenuCard(
                                title: items[index].title,
                                image: items[index].image,
                                price: items[index].price,
                              ),
                            )),
                  );
                },
                childCount: demoCategoryMenus.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
