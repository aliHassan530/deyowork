class ReviewServiceProviderModel {
   ReviewServiceProviderModel({
    this.img,
    this.title,
    this.trailing,
    this.detail,
    required this.rating,
  });

  final img;
  final title;
  final trailing;
  double rating;
  final detail;
}

List<ReviewServiceProviderModel> reviewData = [
  ReviewServiceProviderModel(

    img: "assets/Ellipse 28.png",
    title: "Ali khan",
    trailing: "26th April, 2022",
    detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. ",
    rating: 5,
  ),

  ReviewServiceProviderModel(

    img: "assets/Ellipse 28.png",
    title: "Ali khan",
    trailing: "26th April, 2022",
    detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. ",
    rating: 5,
  ),
  ReviewServiceProviderModel(

    img: "assets/Ellipse 28.png",
    title: "Ali khan",
    trailing: "26th April, 2022",
    detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. ",
    rating: 5,
  ),
  ReviewServiceProviderModel(

    img: "assets/Ellipse 28.png",
    title: "Ali khan",
    trailing: "26th April, 2022",
    detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. ",
    rating: 5,
  ),
];

List<ReviewServiceProviderModel> get reviewList => reviewData;
