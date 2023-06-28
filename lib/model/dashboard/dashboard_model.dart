class DashboardModel {
  ClientInfo? clientInfo;
  int? code;
  String? status;
  String? message;

  DashboardModel({this.clientInfo, this.code, this.status, this.message});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    clientInfo = json['client_info'] != null
        ? ClientInfo.fromJson(json['client_info'])
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
  String? bookingId;
  String? bookingDate;
  String? projectCost;
  String? aggrementDate;
  String? startDate;
  String? endDate;

  ClientInfo(
      {this.bookingId,
        this.bookingDate,
        this.projectCost,
        this.aggrementDate,
        this.startDate,
        this.endDate});

  ClientInfo.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    bookingDate = json['booking_date'];
    projectCost = json['project_cost'];
    aggrementDate = json['aggrement_date'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['booking_id'] = bookingId;
    data['booking_date'] = bookingDate;
    data['project_cost'] = projectCost;
    data['aggrement_date'] = aggrementDate;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    return data;
  }
}
