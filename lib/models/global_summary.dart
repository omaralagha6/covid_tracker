

class GlobalSummaryModel {
  
   final int NewConfirmed;
   final int TotalConfirmed;
   final int NewDeaths;
   final int TotalDeaths;
   final int NewRecovered;
   final int TotalRecovered;
   final DateTime Date;
  GlobalSummaryModel(
     this.NewConfirmed,
     this.TotalConfirmed,
     this.NewDeaths,
     this.TotalDeaths,
     this.NewRecovered,
     this.TotalRecovered,
     this.Date,
  );
  
  factory GlobalSummaryModel.fromJson(Map<String, dynamic> json){
    return GlobalSummaryModel(
     json["Global"]['NewConfirmed'],
    json["Global"]['TotalConfirmed'],
     json["Global"]['NewDeaths'],
     json["Global"]['TotalDeaths'],
     json["Global"]['NewRecovered'],
     json["Global"]['TotalRecovered'],
     DateTime.parse(json['Date']));
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['NewConfirmed'] = NewConfirmed;
    _data['TotalConfirmed'] = TotalConfirmed;
    _data['NewDeaths'] = NewDeaths;
    _data['TotalDeaths'] = TotalDeaths;
    _data['NewRecovered'] = NewRecovered;
    _data['TotalRecovered'] = TotalRecovered;
    _data['Date'] = Date;
    return _data;
  }
}
