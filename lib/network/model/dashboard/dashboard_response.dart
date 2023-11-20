import 'package:cricket/network/base/base_response_model.dart';

class DashboardResponse extends BaseResponseModel{
  bool? status;
  String? msg;
  List<Data>? data;

  DashboardResponse({this.status, this.msg, this.data});

  DashboardResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? matchId;
  int? seriesId;
  String? series;
  String? dateWise;
  String? matchDate;
  String? matchTime;
  String? matchs;
  int? venueId;
  String? venue;
  String? matchType;
  String? matchStatus;
  String? favTeam;
  String? minRate;
  String? maxRate;
  int? teamAId;
  String? teamA;
  String? teamAShort;
  String? teamAImg;
  int? teamBId;
  String? teamB;
  String? teamBShort;
  String? teamBImg;

  Data(
      {this.matchId,
        this.seriesId,
        this.series,
        this.dateWise,
        this.matchDate,
        this.matchTime,
        this.matchs,
        this.venueId,
        this.venue,
        this.matchType,
        this.matchStatus,
        this.favTeam,
        this.minRate,
        this.maxRate,
        this.teamAId,
        this.teamA,
        this.teamAShort,
        this.teamAImg,
        this.teamBId,
        this.teamB,
        this.teamBShort,
        this.teamBImg});

  Data.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    seriesId = json['series_id'];
    series = json['series'];
    dateWise = json['date_wise'];
    matchDate = json['match_date'];
    matchTime = json['match_time'];
    matchs = json['matchs'];
    venueId = json['venue_id'];
    venue = json['venue'];
    matchType = json['match_type'];
    matchStatus = json['match_status'];
    favTeam = json['fav_team'];
    minRate = json['min_rate'];
    maxRate = json['max_rate'];
    teamAId = json['team_a_id'];
    teamA = json['team_a'];
    teamAShort = json['team_a_short'];
    teamAImg = json['team_a_img'];
    teamBId = json['team_b_id'];
    teamB = json['team_b'];
    teamBShort = json['team_b_short'];
    teamBImg = json['team_b_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['match_id'] = this.matchId;
    data['series_id'] = this.seriesId;
    data['series'] = this.series;
    data['date_wise'] = this.dateWise;
    data['match_date'] = this.matchDate;
    data['match_time'] = this.matchTime;
    data['matchs'] = this.matchs;
    data['venue_id'] = this.venueId;
    data['venue'] = this.venue;
    data['match_type'] = this.matchType;
    data['match_status'] = this.matchStatus;
    data['fav_team'] = this.favTeam;
    data['min_rate'] = this.minRate;
    data['max_rate'] = this.maxRate;
    data['team_a_id'] = this.teamAId;
    data['team_a'] = this.teamA;
    data['team_a_short'] = this.teamAShort;
    data['team_a_img'] = this.teamAImg;
    data['team_b_id'] = this.teamBId;
    data['team_b'] = this.teamB;
    data['team_b_short'] = this.teamBShort;
    data['team_b_img'] = this.teamBImg;
    return data;
  }
}
