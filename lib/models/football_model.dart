class FootballModel {
  // Define the fields for the model
  List<Match>? matches;

  // Define the constructor for the model
  FootballModel({this.matches});

  // Define a factory method to create a model from JSON data
  factory FootballModel.fromJson(Map<String, dynamic> json) {
    // Extract the matches list from the JSON data
    List<dynamic>? matchesJson = json['matches'];

    // Convert each match JSON object to a Match instance
    List<Match>? matchesList = matchesJson?.map((matchJson) => Match.fromJson(matchJson)).toList();

    // Return a new FootballModel instance with the matches list
    return FootballModel(matches: matchesList);
  }
}

// Define a class for each match
class Match {
  // Define the fields for the match
  Area? area;
  Competition? competition;
  Season? season;
  int? id;
  String? utcDate;
  String? status;
  int? matchday;
  String? stage;
  String? group;
  String? lastUpdated;
  Team? homeTeam;
  Team? awayTeam;
  Score? score;

  // Define the constructor for the match
  Match({
    this.area,
    this.competition,
    this.season,
    this.id,
    this.utcDate,
    this.status,
    this.matchday,
    this.stage,
    this.group,
    this.lastUpdated,
    this.homeTeam,
    this.awayTeam,
    this.score,
  });

  // Define a factory method to create a match from JSON data
  factory Match.fromJson(Map<String, dynamic> json) {
    // Extract the nested objects from the JSON data
    Map<String, dynamic>? areaJson = json['area'];
    Map<String, dynamic>? competitionJson = json['competition'];
    Map<String, dynamic>? seasonJson = json['season'];
    Map<String, dynamic>? homeTeamJson = json['homeTeam'];
    Map<String, dynamic>? awayTeamJson = json['awayTeam'];
    Map<String, dynamic>? scoreJson = json['score'];

    // Convert each nested object to an instance of its corresponding class
    Area? area = areaJson != null ? Area.fromJson(areaJson) : null;
    Competition? competition = competitionJson != null ? Competition.fromJson(competitionJson) : null;
    Season? season = seasonJson != null ? Season.fromJson(seasonJson) : null;
    Team? homeTeam = homeTeamJson != null ? Team.fromJson(homeTeamJson) : null;
    Team? awayTeam = awayTeamJson != null ? Team.fromJson(awayTeamJson) : null;
    Score? score = scoreJson != null ? Score.fromJson(scoreJson) : null;

    // Return a new Match instance with the nested objects
    return Match(
      area: area,
      competition: competition,
      season: season,
      id: json['id'],
      utcDate: json['utcDate'],
      status: json['status'],
      matchday: json['matchday'],
      stage: json['stage'],
      group: json['group'],
      lastUpdated: json['lastUpdated'],
      homeTeam: homeTeam,
      awayTeam: awayTeam,
      score: score,
    );
  }
}

// Define a class for each area
class Area {
  // Define the fields for the area
  int? id;
  String? name;
  String? code;
  String? flag;

  // Define the constructor for the area
  Area({
    this.id,
    this.name,
    this.code,
    this.flag,
  });

  // Define a factory method to create an area from JSON data
  factory Area.fromJson(Map<String, dynamic> json) {
    // Return a new Area instance with the JSON data
    return Area(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      flag: json['flag'],
    );
  }
}

// Define a class for each competition
class Competition {
  // Define the fields for the competition
  int? id;
  String? name;
  String? code;
  String? type;
  String? emblem;

  // Define the constructor for the competition
  Competition({
    this.id,
    this.name,
    this.code,
    this.type,
    this.emblem,
  });

  // Define a factory method to create a competition from JSON data
  factory Competition.fromJson(Map<String, dynamic> json) {
    // Return a new Competition instance with the JSON data
    return Competition(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      type: json['type'],
      emblem: json['emblem'],
    );
  }
}

// Define a class for each season
class Season {
  // Define the fields for the season
  int? id;
  String? startDate;
  String? endDate;
  int? currentMatchday;
  dynamic winner;

  // Define the constructor for the season
  Season({
    this.id,
    this.startDate,
    this.endDate,
    this.currentMatchday,
    this.winner,
  });

  // Define a factory method to create a season from JSON data
  factory Season.fromJson(Map<String, dynamic> json) {
    // Return a new Season instance with the JSON data
    return Season(
      id: json['id'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      currentMatchday: json['currentMatchday'],
      winner: json['winner'],
    );
  }
}

// Define a class for each team
class Team {
  // Define the fields for the team
  int? id;
  String? name;
  String? shortName;
  String? tla;
  String? crest;

  // Define the constructor for the team
  Team({
    this.id,
    this.name,
    this.shortName,
    this.tla,
    this.crest,
  });

  // Define a factory method to create a team from JSON data
  factory Team.fromJson(Map<String, dynamic> json) {
    // Return a new Team instance with the JSON data
    return Team(
      id: json['id'],
      name: json['name'],
      shortName: json['shortName'],
      tla: json['tla'],
      crest: json['crest'],
    );
  }
}

// Define a class for each score
class Score {
  // Define the fields for the score
  String? winner;
  String? duration;
  Result? fullTime;

  // Define the constructor for the score
  Score({
    this.winner,
    this.duration,
    this.fullTime,
  });

  // Define a factory method to create a score from JSON data
  factory Score.fromJson(Map<String, dynamic> json) {
    // Extract the nested object from the JSON data
    Map<String, dynamic>? fullTimeJson = json['fullTime'];

    // Convert the nested object to an instance of its corresponding class
    Result? fullTime = fullTimeJson != null ? Result.fromJson(fullTimeJson) : null;

    // Return a new Score instance with the nested object
    return Score(
      winner: json['winner'],
      duration: json['duration'],
      fullTime: fullTime,
    );
  }
}

// Define a class for each result
class Result {
  // Define the fields for the result
  int? home;
  int? away;

  // Define the constructor for the result
  Result({
    this.home,
    this.away,
  });

  // Define a factory method to create a result from JSON data
  factory Result.fromJson(Map<String, dynamic> json) {
    // Return a new Result instance with the JSON data
    return Result(
      home: json['home'],
      away: json['away'],
    );
  }
}
