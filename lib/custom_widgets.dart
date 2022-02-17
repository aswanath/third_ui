import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[900],
      centerTitle: true,
      elevation: 0,
      title:const  Text("Payments",style: TextStyle(),),
      leading: Icon(Icons.arrow_back_outlined),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Icon(Icons.info_outline),
        )
      ],
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class Transation extends StatelessWidget {
  const Transation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 168,width: MediaQuery.of(context).size.width,
      child: DecoratedBox(decoration: BoxDecoration(color: Colors.white,
          border: Border.all(color: Colors.grey,width: 1.5)),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Transaction limit",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              SizedBox(height: 3,),
              Text('''A free limit up to which you will receive 
the online payments directly in your bank''',style: TextStyle(color: Colors.grey[800],letterSpacing: .7),),
              SizedBox(height: 10,),
              LinearProgressIndicator(value: .27,backgroundColor: Colors.grey[400],color: Colors.blue[900],),
              SizedBox(height: 5,),
              Text("36,668 left out of ₹50,000",style: TextStyle(color: Colors.grey[700]),),
              SizedBox(height: 5,),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.blue[900]),onPressed: (){}, child: Text("Increase Limit")),
            ],
          ),
        ),),);
  }
}

class ListTileCusot extends StatelessWidget {
  String text;
  FontWeight? weight;
  String text2;
  IconData icon;
  double? size;
  double? font;
   ListTileCusot({Key? key,required this.icon,this.font,this.size,required this.text,this.weight,required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      dense: true,
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      title: Text(text,style: TextStyle(fontSize: font??16,letterSpacing: .2,fontWeight: weight),),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text2,style: TextStyle(color: Colors.grey[600]),),
          SizedBox(width: 5,),
          Icon(icon,size: size??16,color: Colors.grey[700],)
        ],
      ),
    );
  }
}

class Amount extends StatelessWidget {
  Color? bgcolor;
  String heading;
  String rupees;
   Amount({Key? key,required this.heading,required this.rupees,required this.bgcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      height: 60,
      child: DecoratedBox(decoration: BoxDecoration(color: bgcolor,borderRadius: BorderRadius.circular(7)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 10, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading,style: TextStyle(color: Colors.white),),
              Text(rupees,style: TextStyle(fontSize: 20,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}

class TabBAr extends StatelessWidget {
   String text;
   Color? color;
   Color? textcolor;
   double? width;
   TabBAr({Key? key,this.width,required this.textcolor,required this.color,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width??95,height: 30,child: DecoratedBox(
      decoration: BoxDecoration(
          color: color,borderRadius: BorderRadius.circular(15)),
      child: Center(child: Text(text,style: TextStyle(color: textcolor),)),
    ),);
  }
}

class ListViewCustom extends StatelessWidget {
  String orderid;
  String time;
  String amount;
  String imagelink;
   ListViewCustom({Key? key,required this.imagelink,required this.orderid,required this.amount,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: DecoratedBox(decoration: BoxDecoration(border: Border(bottom: BorderSide(width: .5,color: Colors.grey))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Card(child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network('$imagelink',width:50,height: 50,fit: BoxFit.fill,),),),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    Text("Order #$orderid",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 3,),
                    Text(time,style: TextStyle(color: Colors.grey[600]),)
                  ],
                ),
                SizedBox(width: 76,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 12,),
                    Text("₹$amount",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 16),),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.green,radius: 7,),
                        SizedBox(width: 5,),
                        Text("Successful")
                      ],)
                  ],
                ),
              ],
            ),
            SizedBox(height: 2,),
            Text("₹$amount depostied to 64575687636564",style: TextStyle(fontSize: 12,color: Colors.grey[800]),)
          ],
        ),
      ),
    );
  }
}
