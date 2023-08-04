class PlotGalleryModel {
  String? status;
  int? code;
  String? message;
  List<Result>? result;

  PlotGalleryModel({this.status, this.code, this.message, this.result});

  PlotGalleryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? remark;
  List<String>? imageNames;

  Result({this.remark, this.imageNames});

  Result.fromJson(Map<String, dynamic> json) {
    remark = json['remark'];
    imageNames = json['image_names'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['remark'] = remark;
    data['image_names'] = imageNames;
    return data;
  }
}
