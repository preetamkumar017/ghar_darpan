class DashboardModel {
  ClientInfo? clientInfo;
  int? code;
  String? status;
  String? message;

  DashboardModel({this.clientInfo, this.code, this.status, this.message});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    clientInfo = json['client_info'] != null
        ? new ClientInfo.fromJson(json['client_info'])
        : null;
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.clientInfo != null) {
      data['client_info'] = this.clientInfo!.toJson();
    }
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class ClientInfo {
  String? bookingId;
  String? clientName;
  String? emailId;
  String? mobileNo;
  String? permanentAddr;
  String? bookingDate;
  String? projectCost;
  String? aggrementDate;
  String? startDate;
  String? endDate;

  ClientInfo(
      {this.bookingId,
        this.clientName,
        this.emailId,
        this.mobileNo,
        this.permanentAddr,
        this.bookingDate,
        this.projectCost,
        this.aggrementDate,
        this.startDate,
        this.endDate});

  ClientInfo.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    clientName = json['client_name'];
    emailId = json['email_id'];
    mobileNo = json['mobile_no'];
    permanentAddr = json['permanent_addr'];
    bookingDate = json['booking_date'];
    projectCost = json['project_cost'];
    aggrementDate = json['aggrement_date'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['client_name'] = this.clientName;
    data['email_id'] = this.emailId;
    data['mobile_no'] = this.mobileNo;
    data['permanent_addr'] = this.permanentAddr;
    data['booking_date'] = this.bookingDate;
    data['project_cost'] = this.projectCost;
    data['aggrement_date'] = this.aggrementDate;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    return data;
  }
}
