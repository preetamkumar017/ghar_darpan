class DashboardModel {
  List<Notification>? notification;
  bool? isDue;
  ClientInfo? clientInfo;
  PaymentStatus? paymentStatus;
  StageDetails? stageDetails;
  int? code;
  String? status;
  String? message;

  DashboardModel(
      {this.notification,
        this.isDue,
        this.clientInfo,
        this.paymentStatus,
        this.stageDetails,
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
    paymentStatus = json['payment_status'] != null
        ? new PaymentStatus.fromJson(json['payment_status'])
        : null;
    stageDetails = json['stage_details'] != null
        ? new StageDetails.fromJson(json['stage_details'])
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
    if (paymentStatus != null) {
      data['payment_status'] = paymentStatus!.toJson();
    }
    if (stageDetails != null) {
      data['stage_details'] = stageDetails!.toJson();
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
  String? payableDate;
  String? pendingAmt;
  String? totalPaidAmt;
  String? paymentStatus;
  String? runningStatus;
  String? workStartDate;
  String? remark;
  String? status;
  String? createBy;
  String? createDate;
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
        this.payableDate,
        this.pendingAmt,
        this.totalPaidAmt,
        this.paymentStatus,
        this.runningStatus,
        this.workStartDate,
        this.remark,
        this.status,
        this.createBy,
        this.createDate,
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
    payableDate = json['payable_date'];
    pendingAmt = json['pending_amt'];
    totalPaidAmt = json['total_paid_amt'];
    paymentStatus = json['payment_status'];
    runningStatus = json['running_status'];
    workStartDate = json['work_start_date'];
    remark = json['remark'];
    status = json['status'];
    createBy = json['create_by'];
    createDate = json['create_date'];
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
    data['payable_date'] = payableDate;
    data['pending_amt'] = pendingAmt;
    data['total_paid_amt'] = totalPaidAmt;
    data['payment_status'] = paymentStatus;
    data['running_status'] = runningStatus;
    data['work_start_date'] = workStartDate;
    data['remark'] = remark;
    data['status'] = status;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
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

class PaymentStatus {
  String? upcomingAmtDate;
  String? upcomingAmt;
  String? lastPayment;
  String? lastPaymentDate;
  String? totalPaid;
  String? payableAmt;
  String? dueAmt;

  PaymentStatus(
      {this.upcomingAmtDate,
        this.upcomingAmt,
        this.lastPayment,
        this.lastPaymentDate,
        this.totalPaid,
        this.payableAmt,
        this.dueAmt});

  PaymentStatus.fromJson(Map<String, dynamic> json) {
    upcomingAmtDate = json['upcoming_amt_date'];
    upcomingAmt = json['upcoming_amt'];
    lastPayment = json['last_payment'];
    lastPaymentDate = json['last_payment_date'];
    totalPaid = json['total_paid'];
    payableAmt = json['payable_amt'];
    dueAmt = json['due_amt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['upcoming_amt_date'] = upcomingAmtDate;
    data['upcoming_amt'] = upcomingAmt;
    data['last_payment'] = lastPayment;
    data['last_payment_date'] = lastPaymentDate;
    data['total_paid'] = totalPaid;
    data['payable_amt'] = payableAmt;
    data['due_amt'] = dueAmt;
    return data;
  }
}

class StageDetails {
  String? startDate;
  String? endDate;
  String? payableAmt;
  String? pendingAmt;
  String? stageName;
  String? remark;

  StageDetails(
      {this.startDate,
        this.endDate,
        this.payableAmt,
        this.pendingAmt,
        this.stageName,
        this.remark});

  StageDetails.fromJson(Map<String, dynamic> json) {
    startDate = json['start_date'];
    endDate = json['end_date'];
    payableAmt = json['payable_amt'];
    pendingAmt = json['pending_amt'];
    stageName = json['stage_name'];
    remark = json['remark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['payable_amt'] = payableAmt;
    data['pending_amt'] = pendingAmt;
    data['stage_name'] = stageName;
    data['remark'] = remark;
    return data;
  }
}
