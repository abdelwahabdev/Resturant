import 'package:efood_multivendor_restaurant/data/api/api_client.dart';
import 'package:efood_multivendor_restaurant/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class CouponRepo {
  final ApiClient apiClient;

  CouponRepo({@required this.apiClient});

  Future<Response> addCoupon(Map<String, String> data) async {
    return apiClient.postData(AppConstants.ADD_COUPON_URI, data);
  }

  Future<Response> updateCoupon(Map<String, String> data) async {
    return apiClient.postData(AppConstants.COUPON_UPDATE_URI, data);
  }

  Future<Response> getCouponList(int offset) async {
    return apiClient.getData('${AppConstants.COUPON_LIST_URI}?limit=50&offset=$offset');
  }

  Future<Response> changeStatus(int couponId, int status) async {
    return apiClient.postData(AppConstants.COUPON_CHANGE_STATUS_URI,{"coupon_id": couponId, "status": status});
  }

  Future<Response> deleteCoupon(int couponId) async {
    return apiClient.postData(AppConstants.COUPON_DELETE_URI,{"coupon_id": couponId});
  }
}