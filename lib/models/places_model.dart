class PlacesModel {
  final String placeName;
  final String placeImage;
  double? price;

  PlacesModel({
    required this.placeName,
    required this.placeImage,
    this.price,
  });
}
