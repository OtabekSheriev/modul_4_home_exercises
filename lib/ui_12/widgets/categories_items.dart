class CategoriesItems {
  final String image;
  final String text;

  CategoriesItems(this.image, this.text);
}

List<CategoriesItems> categories = categoriesData
    .map((item) => CategoriesItems(
          item['image'] as String,
          item['text'] as String,
        ))
    .toList();
var categoriesData = [
  {"text": "Artsy", 'image': "assets/assets12/images/Artsy.png"},
  {"text": "Berkely", 'image': "assets/assets12/images/Berkely.png"},
  {"text": "Capucinus", 'image': "assets/assets12/images/Capucinus.png"},
  {"text": "Monogram", 'image': "assets/assets12/images/Monogram.png"},
];
