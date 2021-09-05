import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
        name: 'Sport Kit',
        imageUrl:
            'https://www.fitadium.com/9121-fit_600/ab-wheel.jpg?frz-v=544'),
    const Category(
        name: 'heathly food ',
        imageUrl:
            'https://media.cooperation.ch/images/2019/11/18/090553604-e09071f2-edfb-4de8-bf5f-bd2b337c8bb0.jpg'),
    const Category(
        name: 'protein',
        imageUrl:
            'https://d23o500odzh64r.cloudfront.net/media/catalog/product/1/9/190314_whey_vanilla_500.jpg'),
  ];
}
