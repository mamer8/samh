class FlightResponse {
  List<FlightsData>? data;

  FlightResponse({this.data});

  FlightResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <FlightsData>[];
      json['data'].forEach((v) {
        data!.add(new FlightsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FlightsData {
  String? start;
  String? end;
  String? price;
  String? hr;
  String? min;
  String? inText;
  int? stops;

  FlightsData({this.start, this.end, this.price, this.hr, this.min, this.stops,this.inText});

  FlightsData.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
    price = json['price'];
    hr = json['hr'];
    min = json['min'];
    inText = json['in'];
    stops = json['stops'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start'] = this.start;
    data['end'] = this.end;
    data['price'] = this.price;
    data['hr'] = this.hr;
    data['min'] = this.min;
    data['in'] = this.inText;
    data['stops'] = this.stops;
    return data;
  }
}
