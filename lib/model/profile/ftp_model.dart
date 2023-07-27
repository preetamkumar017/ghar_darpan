class FTPModel {
  Result? result;
  int? code;
  String? status;
  String? message;

  FTPModel({this.result, this.code, this.status, this.message});

  FTPModel.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Result {
  String? id;
  String? ftpHost;
  String? ftpUser;
  String? ftpPass;
  String? status;
  String? createDate;
  String? ip;

  Result(
      {this.id,
        this.ftpHost,
        this.ftpUser,
        this.ftpPass,
        this.status,
        this.createDate,
        this.ip});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ftpHost = json['ftp_host'];
    ftpUser = json['ftp_user'];
    ftpPass = json['ftp_pass'];
    status = json['status'];
    createDate = json['create_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ftp_host'] = this.ftpHost;
    data['ftp_user'] = this.ftpUser;
    data['ftp_pass'] = this.ftpPass;
    data['status'] = this.status;
    data['create_date'] = this.createDate;
    data['ip'] = this.ip;
    return data;
  }
}
