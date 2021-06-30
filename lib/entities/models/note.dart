import 'dart:convert';

class Note {
  String id;
  String dressName;
  String dressModelNo;
  String dressSize;
  String dressDetails;
  String dressImageUrl;
  String dressImage;
  DateTime createdAt;
  dynamic updatedAt;

  Note({
    this.id,
    this.dressName,
    this.dressModelNo,
    this.dressSize,
    this.dressDetails,
    this.dressImageUrl,
    this.dressImage,
    this.createdAt,
    this.updatedAt,
  });

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        id: json["id"],
        dressName: json["dress_name"],
        dressModelNo: json["dress_model_no"],
        dressSize: json["dress_size"],
        dressDetails: json["dress_details"],
        dressImageUrl: json["dress_image_url"],
        dressImage: json["dress_image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
      );
}
