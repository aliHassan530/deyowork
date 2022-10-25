class ServiceProvideModel {
  const ServiceProvideModel({
    this.img,
  });

  final img;
}

List<ServiceProvideModel> serviceProvideData = [
  ServiceProvideModel(
    img: "assets/Group 84.png",
  ),
  ServiceProvideModel(
    img: "assets/Rectangle 7.png",
  ),
  ServiceProvideModel(
    img: "assets/Group 86.png",
  ),
  ServiceProvideModel(
    img: "assets/Group 87 (1).png",
  ),
];

List<ServiceProvideModel> get serviceProvideList => serviceProvideData;
