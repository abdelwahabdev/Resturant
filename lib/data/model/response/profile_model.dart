class ProfileModel {
  int id;
  String fName;
  String lName;
  String phone;
  String email;
  String createdAt;
  String updatedAt;
  String bankName;
  String branch;
  String holderName;
  String accountNo;
  String image;
  int orderCount;
  int todaysOrderCount;
  int thisWeekOrderCount;
  int thisMonthOrderCount;
  int memberSinceDays;
  double cashInHands;
  double balance;
  double totalEarning;
  double todaysEarning;
  double thisWeekEarning;
  double thisMonthEarning;
  List<Restaurant> restaurants;
  Subscription subscription;
  SubscriptionOtherData subscriptionOtherData;

  ProfileModel(
      {this.id,
        this.fName,
        this.lName,
        this.phone,
        this.email,
        this.createdAt,
        this.updatedAt,
        this.bankName,
        this.branch,
        this.holderName,
        this.accountNo,
        this.image,
        this.orderCount,
        this.todaysOrderCount,
        this.thisWeekOrderCount,
        this.thisMonthOrderCount,
        this.memberSinceDays,
        this.cashInHands,
        this.balance,
        this.totalEarning,
        this.todaysEarning,
        this.thisWeekEarning,
        this.thisMonthEarning,
        this.restaurants,
        this.subscription,
        this.subscriptionOtherData,
      });

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    bankName = json['bank_name'];
    branch = json['branch'];
    holderName = json['holder_name'];
    accountNo = json['account_no'];
    image = json['image'];
    orderCount = json['order_count'];
    todaysOrderCount = json['todays_order_count'];
    thisWeekOrderCount = json['this_week_order_count'];
    thisMonthOrderCount = json['this_month_order_count'];
    memberSinceDays = json['member_since_days'];
    cashInHands = json['cash_in_hands'].toDouble();
    balance = json['balance'].toDouble();
    totalEarning = json['total_earning'].toDouble();
    todaysEarning = json['todays_earning'].toDouble();
    thisWeekEarning = json['this_week_earning'].toDouble();
    thisMonthEarning = json['this_month_earning'].toDouble();
    if (json['restaurants'] != null) {
      restaurants = [];
      json['restaurants'].forEach((v) {
        restaurants.add(new Restaurant.fromJson(v));
      });
    }
    if (json['subscription'] != null) {
      subscription = Subscription.fromJson(json['subscription']);
    }
    subscriptionOtherData = json['subscription_other_data'] != null ? SubscriptionOtherData.fromJson(json['subscription_other_data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['bank_name'] = this.bankName;
    data['branch'] = this.branch;
    data['holder_name'] = this.holderName;
    data['account_no'] = this.accountNo;
    data['image'] = this.image;
    data['order_count'] = this.orderCount;
    data['todays_order_count'] = this.todaysOrderCount;
    data['this_week_order_count'] = this.thisWeekOrderCount;
    data['this_month_order_count'] = this.thisMonthOrderCount;
    data['member_since_days'] = this.memberSinceDays;
    data['cash_in_hands'] = this.cashInHands;
    data['balance'] = this.balance;
    data['total_earning'] = this.totalEarning;
    data['todays_earning'] = this.todaysEarning;
    data['this_week_earning'] = this.thisWeekEarning;
    data['this_month_earning'] = this.thisMonthEarning;
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Restaurant {
  int id;
  String name;
  String phone;
  String email;
  String logo;
  String latitude;
  String longitude;
  String address;
  double minimumOrder;
  bool scheduleOrder;
  String currency;
  String createdAt;
  String updatedAt;
  bool freeDelivery;
  String coverPhoto;
  bool delivery;
  bool takeAway;
  double tax;
  bool reviewsSection;
  bool foodSection;
  String availableTimeStarts;
  String availableTimeEnds;
  double avgRating;
  int ratingCount;
  bool active;
  bool gstStatus;
  String gstCode;
  int selfDeliverySystem;
  bool posSystem;
  double minimumShippingCharge;
  double maximumShippingCharge;
  double perKmShippingCharge;
  String restaurantModel;
  int veg;
  int nonVeg;
  Discount discount;
  List<Schedules> schedules;
  String deliveryTime;
  List<Cuisine> cuisines;

  Restaurant(
      {this.id,
        this.name,
        this.phone,
        this.email,
        this.logo,
        this.latitude,
        this.longitude,
        this.address,
        this.minimumOrder,
        this.scheduleOrder,
        this.currency,
        this.createdAt,
        this.updatedAt,
        this.freeDelivery,
        this.coverPhoto,
        this.delivery,
        this.takeAway,
        this.tax,
        this.reviewsSection,
        this.foodSection,
        this.availableTimeStarts,
        this.availableTimeEnds,
        this.avgRating,
        this.ratingCount,
        this.active,
        this.gstStatus,
        this.gstCode,
        this.selfDeliverySystem,
        this.posSystem,
        this.minimumShippingCharge,
        this.maximumShippingCharge,
        this.perKmShippingCharge,
        this.restaurantModel,
        this.veg,
        this.nonVeg,
        this.discount,
        this.schedules,
        this.deliveryTime,
        this.cuisines,
      });

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    logo = json['logo'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    minimumOrder = json['minimum_order'].toDouble();
    scheduleOrder = json['schedule_order'];
    currency = json['currency'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    freeDelivery = json['free_delivery'];
    coverPhoto = json['cover_photo'];
    delivery = json['delivery'];
    takeAway = json['take_away'];
    tax = json['tax'].toDouble();
    reviewsSection = json['reviews_section'];
    foodSection = json['food_section'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    avgRating = json['avg_rating'].toDouble();
    ratingCount = json['rating_count '];
    active = json['active'];
    gstStatus = json['gst_status'];
    gstCode = json['gst_code'];
    selfDeliverySystem = json['self_delivery_system'];
    posSystem = json['pos_system'];
    minimumShippingCharge = json['minimum_shipping_charge'] != null ? json['minimum_shipping_charge'].toDouble() : null;
    maximumShippingCharge = json['maximum_shipping_charge'] != null ? json['maximum_shipping_charge'].toDouble() : null;
    perKmShippingCharge = json['per_km_shipping_charge'] != null ? json['per_km_shipping_charge'].toDouble() : null;
    restaurantModel = json['restaurant_model'];
    veg = json['veg'];
    nonVeg = json['non_veg'];
    discount = json['discount'] != null ? new Discount.fromJson(json['discount']) : null;
    if (json['schedules'] != null) {
      schedules = <Schedules>[];
      json['schedules'].forEach((v) {
        schedules.add(new Schedules.fromJson(v));
      });
    }
    deliveryTime = json['delivery_time'];
    if (json['cuisine'] != null) {
      cuisines = <Cuisine>[];
      json['cuisine'].forEach((v) {
        cuisines.add(new Cuisine.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['logo'] = this.logo;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    data['minimum_order'] = this.minimumOrder;
    data['schedule_order'] = this.scheduleOrder;
    data['currency'] = this.currency;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['free_delivery'] = this.freeDelivery;
    data['cover_photo'] = this.coverPhoto;
    data['delivery'] = this.delivery;
    data['take_away'] = this.takeAway;
    data['tax'] = this.tax;
    data['reviews_section'] = this.reviewsSection;
    data['food_section'] = this.foodSection;
    data['available_time_starts'] = this.availableTimeStarts;
    data['available_time_ends'] = this.availableTimeEnds;
    data['avg_rating'] = this.avgRating;
    data['rating_count '] = this.ratingCount;
    data['active'] = this.active;
    data['gst_status'] = this.gstStatus;
    data['gst_code'] = this.gstCode;
    data['self_delivery_system'] = this.selfDeliverySystem;
    data['pos_system'] = this.posSystem;
    data['minimum_shipping_charge'] = this.minimumShippingCharge;
    data['maximum_shipping_charge'] = this.maximumShippingCharge;
    data['per_km_shipping_charge'] = this.perKmShippingCharge;
    data['restaurant_model'] = this.restaurantModel;
    data['veg'] = this.veg;
    data['non_veg'] = this.nonVeg;
    if (this.discount != null) {
      data['discount'] = this.discount.toJson();
    }
    if (this.schedules != null) {
      data['schedules'] = this.schedules.map((v) => v.toJson()).toList();
    }
    data['delivery_time'] = this.deliveryTime;
    if (this.cuisines != null) {
      data['cuisine'] = this.cuisines.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cuisine {
  int id;
  String name;
  String image;
  int status;
  String slug;
  String createdAt;
  String updatedAt;
  Pivot pivot;

  Cuisine(
      {this.id,
        this.name,
        this.image,
        this.status,
        this.slug,
        this.createdAt,
        this.updatedAt,
        this.pivot});

  Cuisine.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    status = json['status'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['status'] = this.status;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot.toJson();
    }
    return data;
  }
}

class Pivot {
  int restaurantId;
  int cuisineId;

  Pivot({this.restaurantId, this.cuisineId});

  Pivot.fromJson(Map<String, dynamic> json) {
    restaurantId = int.parse(json['restaurant_id'].toString());
    cuisineId = int.parse(json['cuisine_id'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant_id'] = this.restaurantId;
    data['cuisine_id'] = this.cuisineId;
    return data;
  }
}

class Discount {
  int id;
  String startDate;
  String endDate;
  String startTime;
  String endTime;
  double minPurchase;
  double maxDiscount;
  double discount;
  String discountType;
  int restaurantId;
  String createdAt;
  String updatedAt;

  Discount(
      {this.id,
        this.startDate,
        this.endDate,
        this.startTime,
        this.endTime,
        this.minPurchase,
        this.maxDiscount,
        this.discount,
        this.discountType,
        this.restaurantId,
        this.createdAt,
        this.updatedAt});

  Discount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    minPurchase = json['min_purchase'].toDouble();
    maxDiscount = json['max_discount'].toDouble();
    discount = json['discount'].toDouble();
    discountType = json['discount_type'];
    restaurantId = json['restaurant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['min_purchase'] = this.minPurchase;
    data['max_discount'] = this.maxDiscount;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['restaurant_id'] = this.restaurantId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Schedules {
  int id;
  int restaurantId;
  int day;
  String openingTime;
  String closingTime;

  Schedules(
      {this.id,
        this.restaurantId,
        this.day,
        this.openingTime,
        this.closingTime});

  Schedules.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    restaurantId = json['restaurant_id'];
    day = json['day'];
    openingTime = json['opening_time'].substring(0, 5);
    closingTime = json['closing_time'].substring(0, 5);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['restaurant_id'] = this.restaurantId;
    data['day'] = this.day;
    data['opening_time'] = this.openingTime;
    data['closing_time'] = this.closingTime;
    return data;
  }
}

class Subscription {
  int id;
  int packageId;
  int restaurantId;
  String expiryDate;
  String maxOrder;
  String maxProduct;
  int pos;
  int mobileApp;
  int chat;
  int review;
  int selfDelivery;
  int status;
  int totalPackageRenewed;
  String createdAt;
  String updatedAt;
  Package package;

  Subscription({this.id, this.packageId, this.restaurantId, this.expiryDate, this.maxOrder, this.maxProduct, this.pos, this.mobileApp, this.chat, this.review, this.selfDelivery, this.status, this.totalPackageRenewed, this.createdAt, this.updatedAt, this.package});

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    packageId = json['package_id'];
    restaurantId = json['restaurant_id'];
    expiryDate = json['expiry_date'];
    maxOrder = json['max_order'];
    maxProduct = json['max_product'];
    pos = json['pos'] != null ? json['pos'] : 0;
    mobileApp = json['mobile_app'] != null ? json['mobile_app'] : 0;
    chat = json['chat'] != null ? json['chat'] : 0;
    review = json['review'] != null ? json['review'] : 0;
    selfDelivery = json['self_delivery'];
    status = json['status'];
    totalPackageRenewed = json['total_package_renewed'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    package = json['package'] != null ? Package.fromJson(json['package']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['package_id'] = this.packageId;
    data['restaurant_id'] = this.restaurantId;
    data['expiry_date'] = this.expiryDate;
    data['max_order'] = this.maxOrder;
    data['max_product'] = this.maxProduct;
    data['pos'] = this.pos;
    data['mobile_app'] = this.mobileApp;
    data['chat'] = this.chat;
    data['review'] = this.review;
    data['self_delivery'] = this.selfDelivery;
    data['status'] = this.status;
    data['total_package_renewed'] = this.totalPackageRenewed;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.package != null) {
      data['package'] = this.package.toJson();
    }
    return data;
  }
}

class Package {
  int id;
  String packageName;
  double price;
  int validity;
  String maxOrder;
  String maxProduct;
  int pos;
  int mobileApp;
  int chat;
  int review;
  int selfDelivery;
  int status;
  int def;
  String colour;
  String text;
  String createdAt;
  String updatedAt;

  Package({this.id, this.packageName, this.price, this.validity, this.maxOrder, this.maxProduct, this.pos, this.mobileApp, this.chat, this.review, this.selfDelivery, this.status, this.def, this.colour, this.text, this.createdAt, this.updatedAt});

Package.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  packageName = json['package_name'];
  price = json['price'].toDouble();
  validity = json['validity'];
  maxOrder = json['max_order'];
  maxProduct = json['max_product'];
  pos = json['pos'];
  mobileApp = json['mobile_app'];
  chat = json['chat'];
  review = json['review'];
  selfDelivery = json['self_delivery'];
  status = json['status'];
  def = json['default'];
  colour = json['colour'];
  text = json['text'];
  createdAt = json['created_at'];
  updatedAt = json['updated_at'];
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = this.id;
  data['package_name'] = this.packageName;
  data['price'] = this.price;
  data['validity'] = this.validity;
  data['max_order'] = this.maxOrder;
  data['max_product'] = this.maxProduct;
  data['pos'] = this.pos;
  data['mobile_app'] = this.mobileApp;
  data['chat'] = this.chat;
  data['review'] = this.review;
  data['self_delivery'] = this.selfDelivery;
  data['status'] = this.status;
  data['default'] = this.def;
  data['colour'] = this.colour;
  data['text'] = this.text;
  data['created_at'] = this.createdAt;
  data['updated_at'] = this.updatedAt;
  return data;
  }
}

class SubscriptionOtherData {
  double totalBill;
  int maxProductUpload;

  SubscriptionOtherData({this.totalBill, this.maxProductUpload});

  SubscriptionOtherData.fromJson(Map<String, dynamic> json) {
    totalBill = json['total_bill'] != null ? json['total_bill'].toDouble() : null;
    maxProductUpload = json['max_product_uploads'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['total_bill'] = this.totalBill;
  data['max_product_uploads'] = this.maxProductUpload;

  return data;
  }
}