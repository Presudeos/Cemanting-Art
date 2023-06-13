class Shoes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List <String> detailUrl;
  Shoes (this.title, this.subtitle, this.price, this.imageUrl,this.detailUrl);
  static List<Shoes> generateShoes() {
    return [
     Shoes(
     'Eco Print Cyan', 
     'Shoes',
     '\Rp 65.000', 
     'assets/images/shoes1.png',
     ['assets/images/shoes1.png']),
  
      Shoes(
       'Eco Print Brown',
       'Shoes',
       '\Rp 65.000',
       'assets/images/shoes2.png',
       ['assets/images/shoes2.png']),
      
      Shoes(
       'Eco Print Blue',
       'Shoes',
       '\Rp 65.000',
       'assets/images/shoes3.png',
       ['assets/images/shoes3.png']),
    ];
  }
}