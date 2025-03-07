class ItemModel {
  String name;
  double price;
  String image;
  String description;

  ItemModel(
      {required this.description,
      required this.image,
      required this.name,
      required this.price});
}

List<ItemModel> itemData = [
  ItemModel(
      name: "Men's Slim Fit T-Shirt",
      price: 19.99,
      image: "assets/images/t-shirt.jpeg",
      description:
          "A stylish and comfortable slim fit T-shirt made from soft cotton, perfect for casual wear. Available in various colors."),
  ItemModel(
      name: "Women's Floral Maxi Dress",
      price: 49.99,
      image: "assets/images/floral.jpeg",
      description:
          "A beautiful floral printed maxi dress, perfect for spring and summer occasions. Features a flowing silhouette and adjustable straps."),
  ItemModel(
      name: "Unisex Hoodie",
      price: 34.99,
      image: "assets/images/hoodie.jpeg",
      description:
          "A cozy unisex hoodie with a soft fleece lining. It includes a front pocket and adjustable drawstrings, available in multiple sizes."),
  ItemModel(
      name: "Men's Classic Blue Jeans",
      price: 39.99,
      image: "assets/images/blue jeans.jpeg",
      description:
          "Classic blue jeans made from durable denim with a relaxed fit. Designed for comfort and versatility for everyday wear."),
  ItemModel(
      name: "Women's High-Waisted Skirt",
      price: 29.99,
      image: "assets/images/high waisted.jpeg",
      description:
          "A chic high-waisted skirt that can be dressed up or down. The soft fabric and sleek cut make it perfect for any occasion."),
  ItemModel(
      name: "Men's Leather Jacket",
      price: 129.99,
      image: "assets/images/leather jacket.jpeg",
      description:
          "A premium leather jacket with a rugged, stylish look. Features include zipper details, multiple pockets, and a comfortable fit."),
  ItemModel(
      name: "Women's Puffer Coat",
      price: 89.99,
      image: "assets/images/puffer.jpeg",
      description:
          "A warm, insulated puffer coat designed for cold weather. Features a hood, a zippered front, and cozy pockets."),
  ItemModel(
      name: "Men's Active Joggers",
      price: 24.99,
      image: "assets/images/jogger.jpeg",
      description:
          "Sporty joggers made from breathable fabric, perfect for workouts or casual outings. The elastic waistband and cuffed ankles ensure a snug fit."),
  ItemModel(
      name: "Women's Boho Cardigan",
      price: 39.99,
      image: "assets/images/cardigan.jpeg",
      description:
          "A stylish boho cardigan made from soft knit fabric, featuring fringe details and an open front design, perfect for layering over any outfit."),
  ItemModel(
      name: "Men's Polo Shirt",
      price: 24.99,
      image: "assets/images/polo.jpeg",
      description:
          "A classic polo shirt made from breathable cotton fabric, perfect for casual and semi-formal occasions. Available in several colors."),
];
