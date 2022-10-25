class CategoriesHomeModel {
  const CategoriesHomeModel({
    this.img,
    this.title,
  });

  final img;
  final title;
}

List<CategoriesHomeModel> categoriesData = [
  CategoriesHomeModel(
    img: "assets/Group 84.png",
    title: "Plumber",
  ),
  CategoriesHomeModel(
    img: "assets/Rectangle 7.png",
    title: "Electrician",
  ),
  CategoriesHomeModel(
    img: "assets/Group 86.png",
    title: "Carpet fitter",
  ),
  CategoriesHomeModel(
    img: "assets/Group 87 (1).png",
    title: "Carpenter",
  ),
];

List<CategoriesHomeModel> get categoriesList => categoriesData;
