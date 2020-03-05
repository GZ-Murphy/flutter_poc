


final List<String> titleAssets = [
  'images/food01.jpeg',
  'images/food02.jpeg',
  'images/food03.jpeg',
];

class ContentItem {
  final String name;
  final String tag;
  final String asset;
  final int stock;
  final double price;

  ContentItem({
    this.name,
    this.tag,
    this.asset,
    this.stock,
    this.price,
  });
}

final List<ContentItem> productsForGrid = [
  ContentItem(
      name: 'Chocolate with berries',
      tag: '2',
      asset: 'images/food02.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Trumoo Candies',
      tag: '3',
      asset: 'images/food03.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Choco-coko',
      tag: '4',
      asset: 'images/food04.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Chocolate tree',
      tag: '5',
      asset: 'images/food05.jpeg',
      stock: 1,
      price: 71.0),
];



final  productsForHeaderImg = ContentItem(
      name: 'Bueno Chocolate',
      tag: '1',
      asset: 'images/food01.jpeg',
      stock: 1,
      price: 71.0)
;


final List<ContentItem> productsForList = [
  ContentItem(
      name: 'Bueno Chocolate',
      tag: '1',
      asset: 'images/food01.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Chocolate with berries',
      tag: '2',
      asset: 'images/food02.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Trumoo Candies',
      tag: '3',
      asset: 'images/food03.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Choco-coko',
      tag: '4',
      asset: 'images/food04.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Chocolate tree',
      tag: '5',
      asset: 'images/food05.jpeg',
      stock: 1,
      price: 71.0),
  ContentItem(
      name: 'Chocolate',
      tag: '6',
      asset: 'images/food06.jpeg',
      stock: 1,
      price: 71.0),
];
