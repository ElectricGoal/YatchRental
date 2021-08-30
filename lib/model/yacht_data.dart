import 'package:yacht_rental/model/yacht.dart';

final Yacht yacht1 = Yacht(
  name: "Victoria",
  imageUrl: 'asset/image/img1.jpg',
  cost: 1250,
  star: 5,
  comment: 20,
);

final Yacht yacht2 = Yacht(
  name: "Sense",
  imageUrl: 'asset/image/img2.jpg',
  cost: 1360,
  star: 4,
  comment: 25,
);

final Yacht yacht3 = Yacht(
  name: "Blue Eye",
  imageUrl: 'asset/image/img3.jpg',
  cost: 1500,
  star: 5,
  comment: 10,
);

final Yacht yacht4 = Yacht(
  name: "Neo Space",
  imageUrl: 'asset/image/img4.jpg',
  cost: 1490,
  star: 5,
  comment: 53,
);

final Yacht yacht5 = Yacht(
  name: "Future",
  imageUrl: 'asset/image/img5.jpg',
  cost: 1110,
  star: 3,
  comment: 48,
);

List<Yacht> yachtList = [
  yacht1,
  yacht2,
  yacht3,
  yacht4,
  yacht5,
];
