import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:ttwenty_demo/model/match_model.dart';

class DataHandler
{

  static Future<List<MatchModel>> getAllMatches(BuildContext context) async{

    await Future.delayed(Duration(seconds: 3));

    var matches = <MatchModel>[];

    var assetBundle = DefaultAssetBundle.of(context);

    var data = await assetBundle.loadString('assets/data/ttwenty.json');

    var jsonData = json.decode( data );

    var jsonSchedule = jsonData['schedule'];

    for( var jsonMatch in jsonSchedule)
    {
       MatchModel matchModel = MatchModel.fromJSON(jsonMatch);
       matches.add(matchModel);
    }

    return matches;

  }
}