class InvitationModel {
  const InvitationModel({
    this.img,
    this.title,
    this.subtitle,
    this.detail,
    this.budget,
    this.invited,
    this.titlecategory,
  });

  final img;
  final title;
  final subtitle;
  final titlecategory;
  final detail;
  final budget;
  final invited;
}

List<InvitationModel> invitationData = [
  InvitationModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
    "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    invited: "Jhon,Adam...",
  ),
  InvitationModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
    "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    invited: "Jhon,Adam...",
  ),
  InvitationModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
    "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    invited: "Jhon,Adam...",
  ),
  InvitationModel(
    img: "assets/Ellipse 30.png",
    title: "Adam",
    subtitle: "02:10pm ",
    detail:
    "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
    titlecategory: "Need an expert Plumber",
    budget: "\$120",
    invited: "Jhon,Adam...",
  ),
];

List<InvitationModel> get invitationList => invitationData;
