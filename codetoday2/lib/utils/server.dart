import 'package:http/http.dart' as http;

class Server {
  String key = "vFRSFWo6g7vJ7ZAjt3DMDolU52ORTxwH";
  String url = "";
  callServer(String searchValue, int limit) {
    url =
        "https://api.giphy.com/v1/gifs/search?api_key=$key&q=$searchValue&limit=$limit";
    http.get(url);
  }
}
