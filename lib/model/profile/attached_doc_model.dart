class AttachedDocModel {
  List<Result>? result;
  int? code;
  String? status;
  String? message;

  AttachedDocModel({this.result, this.code, this.status, this.message});

  AttachedDocModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    data['code'] = code;
    data['status'] = status;
    data['message'] = message;
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
  String? createBy;
  String? createDate;
  String? updateDate;
  String? ip;

  Result(
      { this.id,
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['booking_id'] = bookingId;
    data['chk_adhar_copy'] = chkAdharCopy;
    data['adhar_copy'] = adharCopy;
    data['chk_pancard_copy'] = chkPancardCopy;
    data['pancard_copy'] = pancardCopy;
    data['chk_electric_bill'] = chkElectricBill;
    data['electric_bill'] = electricBill;
    data['chk_registry_copy'] = chkRegistryCopy;
    data['registry_copy'] = registryCopy;
    data['chk_b_one_copy'] = chkBOneCopy;
    data['b_one_copy'] = bOneCopy;
    data['chk_khasra_map'] = chkKhasraMap;
    data['khasra_map'] = khasraMap;
    data['chk_approved_tncp'] = chkApprovedTncp;
    data['approved_tncp'] = approvedTncp;
    data['chk_tax_receipt'] = chkTaxReceipt;
    data['tax_receipt'] = taxReceipt;
    data['any_other'] = anyOther;
    data['chk_any_other'] = chkAnyOther;
    data['other_name'] = otherName;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['ip'] = ip;
    return data;
  }
}
