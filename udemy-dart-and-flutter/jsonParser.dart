import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpeg", "id": 1}';
  
  var parsedJson = json.decode(rawJson);
  var imageModel = new ImageModel.fromJson(parsedJson);
  
  print(imageModel.url);
}

class ImageModel
{
  int id = 0;
  String url = "";
  
  ImageModel(this.id, this.url);
  ImageModel.fromJson(parsedJson)
  {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }
}