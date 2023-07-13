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
    final Map<String, dynamic> data = <String, dynamic>{};
    if (clientInfo != null) {
      data['client_info'] = clientInfo!.toJson();
    }
    data['code'] = code;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class ClientInfo {
  String? aggrementDate;
  String? siteId;
  String? bookingId;
  String? clientName;
  String? emailId;
  String? mobileNo;
  String? permanentAddr;
  String? bookingDate;
  String? projectCost;
  String? aggrPeriod;
  String? startDate;
  String? endDate;

  ClientInfo(
      {this.aggrementDate,
        this.siteId,
        this.bookingId,
        this.clientName,
        this.emailId,
        this.mobileNo,
        this.permanentAddr,
        this.bookingDate,
        this.projectCost,
        this.aggrPeriod,
        this.startDate,
        this.endDate});

  ClientInfo.fromJson(Map<String, dynamic> json) {
    aggrementDate = json['aggrement_date'];
    siteId = json['site_id'];
    bookingId = json['booking_id'];
    clientName = json['client_name'];
    emailId = json['email_id'];
    mobileNo = json['mobile_no'];
    permanentAddr = json['permanent_addr'];
    bookingDate = json['booking_date'];
    projectCost = json['project_cost'];
    aggrPeriod = json['aggr_period'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aggrement_date'] = aggrementDate;
    data['site_id'] = siteId;
    data['booking_id'] = bookingId;
    data['client_name'] = clientName;
    data['email_id'] = emailId;
    data['mobile_no'] = mobileNo;
    data['permanent_addr'] = permanentAddr;
    data['booking_date'] = bookingDate;
    data['project_cost'] = projectCost;
    data['aggr_period'] = aggrPeriod;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    return data;
  }
}
