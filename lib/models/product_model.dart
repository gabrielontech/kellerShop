import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });
  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    const Product(
        name: 'Protein #1',
        category: "protein",
        imageUrl:
            'https://medias.toutelanutrition.com/article/2215/1217379_images-feherje-100-pure-whey-100purewhey-chocolate-2270g-8l.png',
        price: 25.99,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'Protein #2',
        category: "protein",
        imageUrl:
            'https://static.thcdn.com/images/large/webp//productimg/1600/1600/10530136-1624839379406715.jpg',
        price: 19.99,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'Protein #3',
        category: "protein",
        imageUrl:
            'https://cdn.shopify.com/s/files/1/0221/4022/3560/products/3_252F5_252F2_252F3_252F35239a1715e12c1a61b34b69b170c8da9f23658a_21362_Simulation_960x960.jpg?v=1630492819',
        price: 16.99,
        isRecommended: false,
        isPopular: true),
    const Product(
        name: 'Protein #4',
        category: "protein",
        imageUrl:
            'https://img.newpharma.net/images/products/fr/500/fortimel-compact-protein-mixed-multipack-bouteilles-8x125ml.2002.jpg',
        price: 27.99,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Sport kit #1',
        category: "Sport Kit",
        imageUrl:
            'https://m.media-amazon.com/images/I/71zNwpocgiL._AC_SL1200_.jpg',
        price: 220.00,
        isRecommended: false,
        isPopular: false),
    const Product(
        name: 'Sport kit #2',
        category: "Sport Kit",
        imageUrl:
            'https://m.media-amazon.com/images/I/81-yh5UtSZS._AC_SL1500_.jpg',
        price: 45.99,
        isRecommended: false,
        isPopular: true),
    const Product(
        name: 'Sport kit #3',
        category: "Sport Kit",
        imageUrl:
            'https://image.darty.com/darty?type=image&source=/market/2020/04/24/mkp_AKFmck1k0NNADQ.jpeg&width=400&height=300&quality=90',
        price: 76.99,
        isRecommended: true,
        isPopular: false),
  ];
}
