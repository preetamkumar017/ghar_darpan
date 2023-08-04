class TrackProgressModel {
  List<Result>? result;
  int? code;
  String? status;
  String? message;

  TrackProgressModel({this.result, this.code, this.status, this.message});

  TrackProgressModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Result {
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
  String? stageName;

  Result(
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
        this.ip,
        this.stageName});

  Result.fromJson(Map<String, dynamic> json) {
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
    stageName = json['stage_name'];
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
    data['payable_date'] = this.payableDate;
    data['pending_amt'] = this.pendingAmt;
    data['total_paid_amt'] = this.totalPaidAmt;
    data['payment_status'] = this.paymentStatus;
    data['running_status'] = this.runningStatus;
    data['work_start_date'] = this.workStartDate;
    data['remark'] = this.remark;
    data['status'] = this.status;
    data['create_by'] = this.createBy;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['ip'] = this.ip;
    data['stage_name'] = this.stageName;
    return data;
  }
}
