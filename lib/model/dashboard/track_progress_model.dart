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
        this.pendingAmt,
        this.payableDate,
        this.totalPaidAmt,
        this.paymentStatus,
        this.status,
        this.createBy,
        this.createDate,
        this.runningStatus,
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
    data['stage_name'] = this.stageName;
    return data;
  }
}
