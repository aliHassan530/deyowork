class BillingModel {
  const BillingModel({
    this.title,
    this.detail,
    this.price,
    this.date,
  });

  final detail;
  final title;
  final price;
  final date;
}

List<BillingModel> billingData = [
  BillingModel(
    title: "Need an expert Plumber",
    detail:
        "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    price: "\$120",
    date: "(23/06/2022)",
  ),
  BillingModel(
    title: "Need an expert Plumber",
    detail:
    "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    price: "\$120",
    date: "(23/06/2022)",
  ),
  BillingModel(
    title: "Need an expert Plumber",
    detail:
    "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    price: "\$120",
    date: "(23/06/2022)",
  ),
  BillingModel(
    title: "Need an expert Plumber",
    detail:
    "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    price: "\$120",
    date: "(23/06/2022)",
  ),
  BillingModel(
    title: "Need an expert Plumber",
    detail:
    "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
    price: "\$120",
    date: "(23/06/2022)",
  ),
];

List<BillingModel> get billingList => billingData;
