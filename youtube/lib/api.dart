import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyAXNVFxwGrmX_NJ6t1bxw7Ku7AmXozlIls";
const ID_CANAL = "UCCQ6SXMc7MoJ88jjpn6j-8Q";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(
      URL_BASE + "search"
        "?part=snippet"
        "&type=video"
        "&maxResults=20"
        "&order=date"
        "&key=$CHAVE_YOUTUBE_API"
        "&channelId=$ID_CANAL"
        "&q=$pesquisa"
    );

    if (response.statusCode== 200){
      Map<String, dynamic> dadosJson = json.decode(response.body);
      // ignore: avoid_print
      print(dadosJson["items"][0]["snippet"]["title"].toString());
    }else{

    }
  }
}