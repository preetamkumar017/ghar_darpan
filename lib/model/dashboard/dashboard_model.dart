class DashboardModel {
  List<Notification>? notification;
  bool? isDue;
  ClientInfo? clientInfo;
  int? code;
  String? status;
  String? message;

  DashboardModel(
      {this.notification,
        this.isDue,
        this.clientInfo,
        this.code,
        this.status,
        this.message});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    if (json['notification'] != null) {
      notification = <Notification>[];
      json['notification'].forEach((v) {
        notification!.add(new Notification.fromJson(v));
      });
    }
    isDue = json['is_due'];
    clientInfo = json['client_info'] != null
        ? new ClientInfo.fromJson(json['client_info'])
        : null;
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (notification != null) {
      data['notification'] = notification!.map((v) => v.toJson()).toList();
    }
    data['is_due'] = isDue;
    if (clientInfo != null) {
      data['client_info'] = clientInfo!.toJson();
    }
    data['code'] = code;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class Notification {
  String? id;
  String? bookingId;
  String? stageId;
  String? startDate;
  String? endDate;
  String? workTag;
  String? stageDetails;
  String? payableAmt;
  String? pendingAmt;
  String? payableDate;
  String? totalPaidAmt;
  String? paymentStatus;
  String? status;
  String? createBy;
  String? createDate;
  String? runningStatus;
  String? updateDate;
  String? ip;

  Notification(
      {this.id,
        this.bookingId,
        this.stageId,
        this.startDate,
        this.endDate,
        this.workTag,
        this.stageDetails,
        this.payableAmt,
        this.pendingAmt,
        this.payableDate,
        this.totalPaidAmt,
        this.paymentStatus,
        this.status,
        this.createBy,
        this.createDate,
        this.runningStatus,
        this.updateDate,
        this.ip});

  Notification.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    stageId = json['stage_id'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    workTag = json['work_tag'];
    stageDetails = json['stage_details'];
    payableAmt = json['payable_amt'];
    pendingAmt = json['pending_amt'];
    payableDate = json['payable_date'];
    totalPaidAmt = json['total_paid_amt'];
    paymentStatus = json['payment_status'];
    status = json['status'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    runningStatus = json['running_status'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['stage_id'] = stageId;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['work_tag'] = workTag;
    data['stage_details'] = stageDetails;
    data['payable_amt'] = payableAmt;
    data['pending_amt'] = pendingAmt;
    data['payable_date'] = payableDate;
    data['total_paid_amt'] = totalPaidAmt;
    data['payment_status'] = paymentStatus;
    data['status'] = status;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['running_status'] = runningStatus;
    data['update_date'] = updateDate;
    data['ip'] = ip;
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
  String? calcId;
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
        this.calcId,
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
    calcId = json['calc_id'];
    bookingDate = json['booking_date'];
    projectCost = json['project_cost'];
    aggrPeriod = json['aggr_period'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aggrement_date'] = aggrementDate;
    data['site_id'] = siteId;
    data['booking_id'] = bookingId;
    data['client_name'] = clientName;
    data['email_id'] = emailId;
    data['mobile_no'] = mobileNo;
    data['permanent_addr'] = permanentAddr;
    data['calc_id'] = calcId;
    data['booking_date'] = bookingDate;
    data['project_cost'] = projectCost;
    data['aggr_period'] = aggrPeriod;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    return data;
  }
}
