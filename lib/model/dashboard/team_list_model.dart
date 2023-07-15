class TeamListModel {
  List<Result>? result;
  int? code;
  String? status;
  String? message;

  TeamListModel({this.result, this.code, this.status, this.message});

  TeamListModel.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    data['code'] = code;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class Result {
  String? id;
  String? userName;
  String? mobile;
  String? designation;
  String? userType;

  Result(
      {this.id, this.userName, this.mobile, this.designation, this.userType});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    mobile = json['mobile'];
    designation = json['designation'];
    userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_name'] = userName;
    data['mobile'] = mobile;
    data['designation'] = designation;
    data['user_type'] = userType;
    return data;
  }
}
