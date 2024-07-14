class ProductEntity {
  ProductEntity({
    this.products,
    this.total,
    this.skip,
    this.limit,});


  List<Products>? products;
  int? total;
  int? skip;
  int? limit;



}

class Products {
  Products({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,});


  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Reviews>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;



}

class Meta {
  Meta({
    this.createdAt,
    this.updatedAt,
    this.barcode,
    this.qrCode,});


  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;



}

class Reviews {
  Reviews({
    this.rating,
    this.comment,
    this.date,
    this.reviewerName,
    this.reviewerEmail,});


  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;


}

class Dimensions {
  Dimensions({
    this.width,
    this.height,
    this.depth,});


  double? width;
  double? height;
  double? depth;



}