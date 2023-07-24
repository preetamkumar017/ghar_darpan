class AddonModel {
  Result? result;
  int? code;
  String? status;
  String? message;

  AddonModel({this.result, this.code, this.status, this.message});

  AddonModel.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? Result.fromJson(json['result']) : null;
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result!.toJson();
    }
    data['code'] = code;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class Result {
  String? id;
  String? calcType;
  String? clientName;
  String? clientMob;
  String? clientAddr;
  String? length;
  String? width;
  String? depth;
  String? totalArea;
  String? floorNum;
  String? workArea;
  String? floorSqPrice;
  String? floorDiscPrice;
  String? totalFDisc;
  String? totalWorkArea;
  String? avgCost;
  String? totalFloorCost;
  String? roadFacing;
  String? rftRate;
  String? bwallHeight;
  String? bwallArea;
  String? bwallCost;
  String? openArea;
  String? openAreaType;
  String? openAreaCost;
  String? elevType;
  String? elevRate;
  String? elevRateStr;
  String? elevCost;
  String? elevCostStr;
  String? totalCost;
  String? stankRate;
  String? isMkitchen;
  String? stankArea;
  String? stankCost;
  String? isStank;
  String? isWtank;
  String? wtankRate;
  String? wtankArea;
  String? wtankCost;
  String? extraPlinthCost;
  String? floorFcelingCost;
  String? sumFcelingCost;
  String? isFceling;
  String? mkitchenCost;
  String? floorStr;
  String? eStr;
  String? tataSteel;
  String? jindalSteel;
  String? jindalBricks;
  String? marble;
  String? woodenLook;
  String? photoFrame;
  String? noPhotoFrame;
  String? compTime;
  String? expBrick;
  String? frameType;
  String? toiletType;
  String? addToilet;
  String? floorStrength;
  String? toiletQty;
  String? additionalCost;
  String? totalDiscCost;
  String? withPaymentTerm;
  String? createBy;
  String? createDate;
  String? updateDate;
  String? status;
  String? ip;
  String? stankDisc;
  String? wtankDisc;
  String? mkDisc;
  String? fcDisc;
  String? bookingId;
  String? bookingDate;

  Result(
      {this.id,
        this.calcType,
        this.clientName,
        this.clientMob,
        this.clientAddr,
        this.length,
        this.width,
        this.depth,
        this.totalArea,
        this.floorNum,
        this.workArea,
        this.floorSqPrice,
        this.floorDiscPrice,
        this.totalFDisc,
        this.totalWorkArea,
        this.avgCost,
        this.totalFloorCost,
        this.roadFacing,
        this.rftRate,
        this.bwallHeight,
        this.bwallArea,
        this.bwallCost,
        this.openArea,
        this.openAreaType,
        this.openAreaCost,
        this.elevType,
        this.elevRate,
        this.elevRateStr,
        this.elevCost,
        this.elevCostStr,
        this.totalCost,
        this.stankRate,
        this.isMkitchen,
        this.stankArea,
        this.stankCost,
        this.isStank,
        this.isWtank,
        this.wtankRate,
        this.wtankArea,
        this.wtankCost,
        this.extraPlinthCost,
        this.floorFcelingCost,
        this.sumFcelingCost,
        this.isFceling,
        this.mkitchenCost,
        this.floorStr,
        this.eStr,
        this.tataSteel,
        this.jindalSteel,
        this.jindalBricks,
        this.marble,
        this.woodenLook,
        this.photoFrame,
        this.noPhotoFrame,
        this.compTime,
        this.expBrick,
        this.frameType,
        this.toiletType,
        this.addToilet,
        this.floorStrength,
        this.toiletQty,
        this.additionalCost,
        this.totalDiscCost,
        this.withPaymentTerm,
        this.createBy,
        this.createDate,
        this.updateDate,
        this.status,
        this.ip,
        this.stankDisc,
        this.wtankDisc,
        this.mkDisc,
        this.fcDisc,
        this.bookingId,
        this.bookingDate});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    calcType = json['calc_type'];
    clientName = json['client_name'];
    clientMob = json['client_mob'];
    clientAddr = json['client_addr'];
    length = json['length'];
    width = json['width'];
    depth = json['depth'];
    totalArea = json['total_area'];
    floorNum = json['floor_num'];
    workArea = json['work_area'];
    floorSqPrice = json['floor_sq_price'];
    floorDiscPrice = json['floor_disc_price'];
    totalFDisc = json['total_f_disc'];
    totalWorkArea = json['total_work_area'];
    avgCost = json['avg_cost'];
    totalFloorCost = json['total_floor_cost'];
    roadFacing = json['road_facing'];
    rftRate = json['rft_rate'];
    bwallHeight = json['bwall_height'];
    bwallArea = json['bwall_area'];
    bwallCost = json['bwall_cost'];
    openArea = json['open_area'];
    openAreaType = json['open_area_type'];
    openAreaCost = json['open_area_cost'];
    elevType = json['elev_type'];
    elevRate = json['elev_rate'];
    elevRateStr = json['elev_rate_str'];
    elevCost = json['elev_cost'];
    elevCostStr = json['elev_cost_str'];
    totalCost = json['total_cost'];
    stankRate = json['stank_rate'];
    isMkitchen = json['is_mkitchen'];
    stankArea = json['stank_area'];
    stankCost = json['stank_cost'];
    isStank = json['is_stank'];
    isWtank = json['is_wtank'];
    wtankRate = json['wtank_rate'];
    wtankArea = json['wtank_area'];
    wtankCost = json['wtank_cost'];
    extraPlinthCost = json['extra_plinth_cost'];
    floorFcelingCost = json['floor_fceling_cost'];
    sumFcelingCost = json['sum_fceling_cost'];
    isFceling = json['is_fceling'];
    mkitchenCost = json['mkitchen_cost'];
    floorStr = json['floor_str'];
    eStr = json['e_str'];
    tataSteel = json['tata_steel'];
    jindalSteel = json['jindal_steel'];
    jindalBricks = json['jindal_bricks'];
    marble = json['marble'];
    woodenLook = json['wooden_look'];
    photoFrame = json['photo_frame'];
    noPhotoFrame = json['no_photo_frame'];
    compTime = json['comp_time'];
    expBrick = json['exp_brick'];
    frameType = json['frame_type'];
    toiletType = json['toilet_type'];
    addToilet = json['add_toilet'];
    floorStrength = json['floor_strength'];
    toiletQty = json['toilet_qty'];
    additionalCost = json['additional_cost'];
    totalDiscCost = json['total_disc_cost'];
    withPaymentTerm = json['with_payment_term'];
    createBy = json['create_by'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    status = json['status'];
    ip = json['ip'];
    stankDisc = json['stank_disc'];
    wtankDisc = json['wtank_disc'];
    mkDisc = json['mk_disc'];
    fcDisc = json['fc_disc'];
    bookingId = json['booking_id'];
    bookingDate = json['booking_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['calc_type'] = calcType;
    data['client_name'] = clientName;
    data['client_mob'] = clientMob;
    data['client_addr'] = clientAddr;
    data['length'] = length;
    data['width'] = width;
    data['depth'] = depth;
    data['total_area'] = totalArea;
    data['floor_num'] = floorNum;
    data['work_area'] = workArea;
    data['floor_sq_price'] = floorSqPrice;
    data['floor_disc_price'] = floorDiscPrice;
    data['total_f_disc'] = totalFDisc;
    data['total_work_area'] = totalWorkArea;
    data['avg_cost'] = avgCost;
    data['total_floor_cost'] = totalFloorCost;
    data['road_facing'] = roadFacing;
    data['rft_rate'] = rftRate;
    data['bwall_height'] = bwallHeight;
    data['bwall_area'] = bwallArea;
    data['bwall_cost'] = bwallCost;
    data['open_area'] = openArea;
    data['open_area_type'] = openAreaType;
    data['open_area_cost'] = openAreaCost;
    data['elev_type'] = elevType;
    data['elev_rate'] = elevRate;
    data['elev_rate_str'] = elevRateStr;
    data['elev_cost'] = elevCost;
    data['elev_cost_str'] = elevCostStr;
    data['total_cost'] = totalCost;
    data['stank_rate'] = stankRate;
    data['is_mkitchen'] = isMkitchen;
    data['stank_area'] = stankArea;
    data['stank_cost'] = stankCost;
    data['is_stank'] = isStank;
    data['is_wtank'] = isWtank;
    data['wtank_rate'] = wtankRate;
    data['wtank_area'] = wtankArea;
    data['wtank_cost'] = wtankCost;
    data['extra_plinth_cost'] = extraPlinthCost;
    data['floor_fceling_cost'] = floorFcelingCost;
    data['sum_fceling_cost'] = sumFcelingCost;
    data['is_fceling'] = isFceling;
    data['mkitchen_cost'] = mkitchenCost;
    data['floor_str'] = floorStr;
    data['e_str'] = eStr;
    data['tata_steel'] = tataSteel;
    data['jindal_steel'] = jindalSteel;
    data['jindal_bricks'] = jindalBricks;
    data['marble'] = marble;
    data['wooden_look'] = woodenLook;
    data['photo_frame'] = photoFrame;
    data['no_photo_frame'] = noPhotoFrame;
    data['comp_time'] = compTime;
    data['exp_brick'] = expBrick;
    data['frame_type'] = frameType;
    data['toilet_type'] = toiletType;
    data['add_toilet'] = addToilet;
    data['floor_strength'] = floorStrength;
    data['toilet_qty'] = toiletQty;
    data['additional_cost'] = additionalCost;
    data['total_disc_cost'] = totalDiscCost;
    data['with_payment_term'] = withPaymentTerm;
    data['create_by'] = createBy;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['status'] = status;
    data['ip'] = ip;
    data['stank_disc'] = stankDisc;
    data['wtank_disc'] = wtankDisc;
    data['mk_disc'] = mkDisc;
    data['fc_disc'] = fcDisc;
    data['booking_id'] = bookingId;
    data['booking_date'] = bookingDate;
    return data;
  }
}
