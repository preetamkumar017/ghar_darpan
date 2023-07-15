class NotificationModel {
  List<NotificationData>? notificationData;
  bool? isDue;
  int? code;
  String? status;
  String? message;

  NotificationModel(
      {this.notificationData,
        this.isDue,
        this.code,
        this.status,
        this.message});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    if (json['notification_data'] != null) {
      notificationData = <NotificationData>[];
      json['notification_data'].forEach((v) {
        notificationData!.add(new NotificationData.fromJson(v));
      });
    }
    isDue = json['is_due'];
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notificationData != null) {
      data['notification_data'] =
          this.notificationData!.map((v) => v.toJson()).toList();
    }
    data['is_due'] = this.isDue;
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class NotificationData {
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
  Null? totalPaidAmt;
  String? paymentStatus;
  String? status;
  String? createBy;
  String? createDate;
  String? runningStatus;
  String? updateDate;
  String? ip;

  NotificationData(
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

  NotificationData.fromJson(Map<String, dynamic> json) {
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
    data['id'] = this.id;
    data['booking_id'] = this.bookingId;
    data['stage_id'] = this.stageId;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['work_tag'] = this.workTag;
    data['stage_details'] = this.stageDetails;
    data['payable_amt'] = this.payableAmt;
    data['pending_amt'] = this.pendingAmt;
    data['payable_date'] = this.payableDate;
    data['total_paid_amt'] = this.totalPaidAmt;
    data['payment_status'] = this.paymentStatus;
    data['status'] = this.status;
    data['create_by'] = this.createBy;
    data['create_date'] = this.createDate;
    data['running_status'] = this.runningStatus;
    data['update_date'] = this.updateDate;
    data['ip'] = this.ip;
    return data;
  }
}
