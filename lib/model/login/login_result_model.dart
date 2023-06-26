class LoginResultModel {
  ClientLogin? clientLogin;
  int? code;
  String? status;
  String? message;

  LoginResultModel({this.clientLogin, this.code, this.status, this.message});

  LoginResultModel.fromJson(Map<String, dynamic> json) {
    clientLogin = json['client_login'] != null
        ? new ClientLogin.fromJson(json['client_login'])
        : null;
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.clientLogin != null) {
      data['client_login'] = this.clientLogin!.toJson();
    }
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class ClientLogin {
  String? id;
  String? loginId;
  String? loginPassword;
  String? bookingId;
  String? status;
  String? createDate;
  String? updateDate;
  String? accessToken;

  ClientLogin(
      {this.id,
        this.loginId,
        this.loginPassword,
        this.bookingId,
        this.status,
        this.createDate,
        this.updateDate,
        this.accessToken});

  ClientLogin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    loginId = json['login_id'];
    loginPassword = json['login_password'];
    bookingId = json['booking_id'];
    status = json['status'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['login_id'] = this.loginId;
    data['login_password'] = this.loginPassword;
    data['booking_id'] = this.bookingId;
    data['status'] = this.status;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['access_token'] = this.accessToken;
    return data;
  }
}
