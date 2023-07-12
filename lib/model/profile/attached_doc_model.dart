class AttachedDocModel {
  Result? result;
  int? code;
  String? status;
  String? message;

  AttachedDocModel({this.result, this.code, this.status, this.message});

  AttachedDocModel.fromJson(Map<String, dynamic> json) {
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
  String? bookingId;
  String? chkAdharCopy;
  String? adharCopy;
  String? chkPancardCopy;
  String? pancardCopy;
  String? chkElectricBill;
  String? electricBill;
  String? chkRegistryCopy;
  String? registryCopy;
  String? chkBOneCopy;
  String? bOneCopy;
  String? chkKhasraMap;
  String? khasraMap;
  String? chkApprovedTncp;
  String? approvedTncp;
  String? chkTaxReceipt;
  String? taxReceipt;
  String? anyOther;
  String? chkAnyOther;
  String? otherName;
  Null? createBy;
  Null? createDate;
  String? updateDate;
  Null? ip;

  Result(
      {this.id,
        this.bookingId,
        this.chkAdharCopy,
        this.adharCopy,
        this.chkPancardCopy,
        this.pancardCopy,
        this.chkElectricBill,
        this.electricBill,
        this.chkRegistryCopy,
        this.registryCopy,
        this.chkBOneCopy,
        this.bOneCopy,
        this.chkKhasraMap,
        this.khasraMap,
        this.chkApprovedTncp,
        this.approvedTncp,
        this.chkTaxReceipt,
        this.taxReceipt,
        this.anyOther,
        this.chkAnyOther,
        this.otherName,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.ip});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    chkAdharCopy = json['chk_adhar_copy'];
    adharCopy = json['adhar_copy'];
    chkPancardCopy = json['chk_pancard_copy'];
    pancardCopy = json['pancard_copy'];
    chkElectricBill = json['chk_electric_bill'];
    electricBill = json['electric_bill'];
    chkRegistryCopy = json['chk_registry_copy'];
    registryCopy = json['registry_copy'];
    chkBOneCopy = json['chk_b_one_copy'];
    bOneCopy = json['b_one_copy'];
    chkKhasraMap = json['chk_khasra_map'];
    khasraMap = json['khasra_map'];
    chkApprovedTncp = json['chk_approved_tncp'];
    approvedTncp = json['approved_tncp'];
    chkTaxReceipt = json['chk_tax_receipt'];
    taxReceipt = json['tax_receipt'];
    anyOther = json['any_other'];
    chkAnyOther = json['chk_any_other'];
    otherName = json['other_name'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['booking_id'] = this.bookingId;
    data['chk_adhar_copy'] = this.chkAdharCopy;
    data['adhar_copy'] = this.adharCopy;
    data['chk_pancard_copy'] = this.chkPancardCopy;
    data['pancard_copy'] = this.pancardCopy;
    data['chk_electric_bill'] = this.chkElectricBill;
    data['electric_bill'] = this.electricBill;
    data['chk_registry_copy'] = this.chkRegistryCopy;
    data['registry_copy'] = this.registryCopy;
    data['chk_b_one_copy'] = this.chkBOneCopy;
    data['b_one_copy'] = this.bOneCopy;
    data['chk_khasra_map'] = this.chkKhasraMap;
    data['khasra_map'] = this.khasraMap;
    data['chk_approved_tncp'] = this.chkApprovedTncp;
    data['approved_tncp'] = this.approvedTncp;
    data['chk_tax_receipt'] = this.chkTaxReceipt;
    data['tax_receipt'] = this.taxReceipt;
    data['any_other'] = this.anyOther;
    data['chk_any_other'] = this.chkAnyOther;
    data['other_name'] = this.otherName;
    data['create_by'] = this.createBy;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['ip'] = this.ip;
    return data;
  }
}
