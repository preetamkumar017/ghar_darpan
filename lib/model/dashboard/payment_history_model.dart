class PaymentHistoryModel {
  List<Result>? result;
  int? code;
  String? status;
  String? message;

  PaymentHistoryModel({this.result, this.code, this.status, this.message});

  PaymentHistoryModel.fromJson(Map<String, dynamic> json) {
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
  String? payableAmt;
  String? paidAmt;
  String? pendingAmt;
  String? refrenceNo;
  String? receivedAs;
  String? receivedBy;
  String? createBy;
  String? status;
  String? createDate;
  String? updateDate;
  String? ip;
  String? stageName;

  Result(
      {this.id,
        this.bookingId,
        this.stageId,
        this.payableAmt,
        this.paidAmt,
        this.pendingAmt,
        this.refrenceNo,
        this.receivedAs,
        this.receivedBy,
        this.createBy,
        this.status,
        this.createDate,
        this.updateDate,
        this.ip,
        this.stageName});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    stageId = json['stage_id'];
    payableAmt = json['payable_amt'];
    paidAmt = json['paid_amt'];
    pendingAmt = json['pending_amt'];
    refrenceNo = json['refrence_no'];
    receivedAs = json['received_as'];
    receivedBy = json['received_by'];
    createBy = json['create_by'];
    status = json['status'];
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
    data['payable_amt'] = this.payableAmt;
    data['paid_amt'] = this.paidAmt;
    data['pending_amt'] = this.pendingAmt;
    data['refrence_no'] = this.refrenceNo;
    data['received_as'] = this.receivedAs;
    data['received_by'] = this.receivedBy;
    data['create_by'] = this.createBy;
    data['status'] = this.status;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['ip'] = this.ip;
    data['stage_name'] = this.stageName;
    return data;
  }
}
