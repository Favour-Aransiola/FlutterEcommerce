
class HttpGet{
  String? img;
  String? name;
  String? type;
  double? price;
  HttpGet({this.img, this.name, this.type,this.price});

  factory HttpGet.dataFromJson(Map<String, dynamic> parsedData){
    return HttpGet(
      img:parsedData['img'],
      name: parsedData['name'],
      type: parsedData['type'],
      price: parsedData['price'] 
    );
  }

  

}