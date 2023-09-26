


class CoinSimpleResponseList{
  List<CoinSimpleResponse> items =[];

  CoinSimpleResponseList();

  CoinSimpleResponseList.fromJsonList(List<dynamic> jsonList){

    if(jsonList==null) return;
    for(var item in jsonList){
      final coinSimpleResponse=CoinSimpleResponse.fromJson(item);
      items.add(coinSimpleResponse);
    }
  }


    String getListIds(List<CoinSimpleResponse> items){
      List<String > idList=items.map((e) => e.id).toList();
     List<String > idListReduced= idList.getRange(0,10).toList();
    
  return (idListReduced.toString());
}
}



class CoinSimpleResponse {
  CoinSimpleResponse({
    required this.id,
    required this.symbol,
    required this.name,
  });
  late final String id;
  late final String symbol;
  late final String name;
  
  //todo add a correct way to get all responses
  CoinSimpleResponse.fromJson(Map<String, dynamic> json){
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['symbol'] = symbol;
    _data['name'] = name;
    return _data;
  }



}