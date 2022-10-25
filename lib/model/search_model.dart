class SearchModel {
  const SearchModel({
    this.title,
    this.discripiton,
  });

  final title;
  final discripiton;
}

List<SearchModel> searchData = [
  SearchModel(
    title: "Plumber",
    discripiton: "Expert in installing and repairing pipes and fixtures ",
  ),

  SearchModel(
    title: "Electrician",
    discripiton: "Expert in installing and repairing pipes and fixtures  ",
  ),
  SearchModel(
    title: "Carpet Fitter",
    discripiton: "Expert in installing and repairing pipes and fixtures ",
  ),
  SearchModel(
    title: "Gas fitter",
    discripiton: "Expert in installing and repairing pipes and fixtures ",
  ),
  SearchModel(
    title: "Carpenter",
    discripiton: "Expert in installing and repairing pipes and fixtures  ",
  ),
];

List<SearchModel> get searchList => searchData;
