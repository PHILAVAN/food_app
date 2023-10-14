class Menu {
  final String title, image;
  final double price;

  Menu({required this.title, required this.image, required this.price});
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "Most Popular",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/c1.png",
        title: "Vanilla",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/c4.png",
        title: "Chocolate",
      ),
     Menu(
        price: 7.4,
        image: "assets/images/s4.png",
        title: "Strawberry",
      ),
       Menu(
        price: 12.4,
        image: "assets/images/s2.png",
        title: "Raspberry",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/s6.png",
        title: "Mixed Berry",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/t1.png",
        title: "Green Tea",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/cf2.png",
        title: "Latte",
      ),
      Menu(
        price: 9.8,
        image: "assets/images/cf4.png",
        title: "Mocha",
      ),
     Menu(
        price: 12.4,
        image: "assets/images/cf5.png",
        title: "Frappe Coffe",
      ),
    ],
  ),
  CategoryMenu(
    category: "Cake",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/c1.png",
        title: "Vanilla",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/c2.png",
        title: "Lemon",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/c3.png",
        title: "Oreo",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/c4.png",
        title: "Chocolate",
      ),
    ],
  ),
  CategoryMenu(
    category: "Tea",
    items: [
      Menu(
        price: 7.4,
        image: "assets/images/t1.png",
        title: "Green Tea",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/t2.png",
        title: "Black Tea",
      ),
      Menu(       
        price: 8.5,  
        image: "assets/images/t3.png",
        title: "White Tea",
      ),
    ],
  ),
  CategoryMenu(
    category: "Coffee",
    items: [
      Menu(
        price: 8.5,
        image: "assets/images/cf1.png",
        title: "Anericano",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/cf2.png",
        title: "Latte",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/cf3.png",
        title: "Cappuccino",
      ),
      Menu(
        price: 9.8,
        image: "assets/images/cf4.png",
        title: "Mocha",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/cf5.png",
        title: "Frappe Coffe",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/cf6.png",
        title: "Glace Coffe",
      ),
    ],
  ),
  CategoryMenu(
    category: "Smoothie",
    items: [
      Menu(
        price: 9.0,
        image: "assets/images/s1.png",
        title: "Berry",
      ),
      Menu(
        price: 12.4,
        image: "assets/images/s2.png",
        title: "Raspberry",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/s3.png",
        title: "Cherry",
      ),
      Menu(
        price: 7.4,
        image: "assets/images/s4.png",
        title: "Strawberry",
      ),
      Menu(
        price: 9.0,
        image: "assets/images/s5.png",
        title: "Blueberry",
      ),
      Menu(
        price: 8.5,
        image: "assets/images/s6.png",
        title: "Mixed Berry",
      ),
    ],
  ),
];
