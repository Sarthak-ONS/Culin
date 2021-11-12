import 'dart:convert';
import 'dart:io';
import 'package:culin/Models/recipe_model.dart';
import 'package:culin/Provider/filterprovider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class RequestHelper {
  List<recipeModel> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<recipeModel>((json) => recipeModel.fromJson(json))
        .toList();
  }

  final String _baseURL = "api.spoonacular.com";
  Future makeRequest(context) async {
    try {
      Uri uri = Uri.https(_baseURL, '/recipes/random',
          Provider.of<FilterProvider>(context, listen: false).parameters);

      Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
      };

      try {
        var response = await http.get(uri, headers: headers);
        print(response.body);
        // var responseBody = response.body;
        // var lis = parsePhotos(responseBody);
        // print(lis.length);
      } catch (err) {
        //If our response has error, we throw an error message
        throw err.toString();
      }
    } on FormatException catch (e) {
      print(e);
    }
  }
}
