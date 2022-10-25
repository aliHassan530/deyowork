class FavouriteModel {
  const FavouriteModel({
    this.subtitle,
    this.heading,
    this.img,
    this.title,
    this.detail,
    this.price,
    this.method,
  });

  final img;
  final title;
  final subtitle;
  final heading;
  final detail;
  final price;
  final method;
}

List<FavouriteModel> favouriteData = [
  FavouriteModel(
    img: "assets/Ellipse 30.png",
    heading: "Need an expert Plumber",
    title: "Ali khan",
    detail:
        "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    method: "Verified",
    price: "\$120",
    subtitle: "02:10pm",
  ),
  FavouriteModel(
    img: "assets/Ellipse 30.png",
    heading: "Need an expert Plumber",
    title: "Ali khan",
    subtitle: "02:10pm",
    detail:
        "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    method: "Verified",
    price: "\$120",
  ),
  FavouriteModel(
    img: "assets/Ellipse 30.png",
    heading: "Need an expert Plumber",
    title: "Ali khan",
    detail:
        "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    method: "Verified",
    price: "\$120",
    subtitle: "02:10pm",
  ),
  FavouriteModel(
    img: "assets/Ellipse 30.png",
    heading: "Need an expert Plumber",
    title: "Ali khan",
    detail:
        "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    method: "Verified",
    price: "\$120",
    subtitle: "02:10pm",
  ),
];

List<FavouriteModel> get favouriteList => favouriteData;
