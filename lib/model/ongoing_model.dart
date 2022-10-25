class OngoingModel {
  const OngoingModel({
    this.img,
    this.title,
    this.subtitle,
    this.detail,
    this.budget,
    this.hired,
    this.joyType,
    this.titlecategory,
  });

  final img;
  final title;
  final subtitle;
  final titlecategory;
  final detail;
  final budget;
  final hired;
  final joyType;
}

List<OngoingModel> ongoingData = [
  OngoingModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
        "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    hired: "Jhon,Adam...",
    joyType: "Grouped",
  ),
  OngoingModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
        "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    hired: "Jhon,Adam...",
    joyType: "Grouped",
  ),
  OngoingModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
        "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    hired: "Jhon,Adam...",
    joyType: "Grouped",
  ),
  OngoingModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
        "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    hired: "Jhon,Adam...",
    joyType: "Grouped",
  ),
];

List<OngoingModel> get ongoingList => ongoingData;
