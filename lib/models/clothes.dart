class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List <String> detailUrl;
  Clothes (this.title, this.subtitle, this.price, this.imageUrl,this.detailUrl);
  static List<Clothes> generateClothes() {
    return [
     Clothes(
     'Eco Print Red', 
     'Dress',
     '\Rp 50.000', 
     'assets/images/dress1.png',
     ['assets/images/dress1.png',
      'assets/images/dress1detail1.png',
      'assets/images/dress1detail2.png']),
  
      Clothes(
       'Eco Print Tortilla',
       'Dress',
       '\Rp 50.000',
       'assets/images/dress2.png',
       ['assets/images/dress2.png',
        'assets/images/dress2detail1.png',
        'assets/images/dress2detail2.png']),
      
      Clothes(
       'Eco Print Orange',
       'Dress',
       '\Rp 50.000',
       'assets/images/dress3.png',
       ['assets/images/dress3.png',
        'assets/images/dress3detail1.png',
        'assets/images/dress3detail2.png']),
    ];
  }
}