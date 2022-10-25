class CurrentJobsDetailModel {
  const CurrentJobsDetailModel({
    this.img,
    this.title,
    this.subtitle,
    this.detail,
    this.rating,
  });

  final img;
  final title;
  final subtitle;
  final rating;
  final detail;
}

List<CurrentJobsDetailModel> currentJobsData = [
  CurrentJobsDetailModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "Plumber & Electrician Services ",
    detail: "Lorem Ipsum",
    rating: "(21)",
  ),
  CurrentJobsDetailModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "Plumber & Electrician Services ",
    detail: "Lorem Ipsum",
    rating: "(21)",
  ),
  CurrentJobsDetailModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "Plumber & Electrician Services ",
    detail: "Lorem Ipsum",
    rating: "(21)",
  ),
  CurrentJobsDetailModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "Plumber & Electrician Services ",
    detail: "Lorem Ipsum",
    rating: "(21)",
  ),
];

List<CurrentJobsDetailModel> get currentList => currentJobsData;
