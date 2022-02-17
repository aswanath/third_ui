
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_ui/custom_widgets.dart';

class ThirdUi extends StatelessWidget {
  const ThirdUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
          child: Column(
            children: [
              Transation(),
              ListTileCusot(icon: Icons.arrow_forward_ios_sharp, text: "Default Method", text2: "Online Payments"),
              ListTileCusot(icon: Icons.arrow_forward_ios_sharp, text: "Payment Profile", text2: "Bank Account"),
              DecoratedBox(decoration: BoxDecoration(border: Border(top: BorderSide(width: .5,color: Colors.grey))),
                  child: ListTileCusot(font:18,icon: Icons.keyboard_arrow_down_outlined, text: "Payments Overview", text2: "Life Time",size: 22,)),
              Row(
                children: [
                  Amount(bgcolor: Colors.orange[800], rupees: '₹0', heading: 'AMOUNT ON HOLD',),
                  SizedBox(width: 24,),
                  Amount(heading: 'AMOUNT RECIEVED', rupees: '₹13,332', bgcolor: Colors.green[800])
                ],
              ),
              SizedBox(height: 10,),
              Align(alignment: Alignment.centerLeft,child: Text("Transactions",style: TextStyle(fontSize: 18),)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Row(
                children: [
                 TabBAr(color: Colors.grey[300], text: "On Hold",textcolor: Colors.grey[700],),
                  SizedBox(width: 10,),
                  TabBAr(color: Colors.blue[800], text: "Payouts (15)",textcolor: Colors.white,width: 120,),
                  SizedBox(width: 10,),
                  TabBAr(color: Colors.grey[300], text: "Refunds",textcolor: Colors.grey[700],)
                ],
              ),
            ),
             SizedBox(height: 10,),
             ListViewCustom(imagelink: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', orderid: '1688068', amount: '799', time: 'Jul 12, 02:06 PM'),
            ListViewCustom(imagelink: 'https://images.unsplash.com/photo-1553859943-a02c5418b798?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHQlMjBzaGlydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', orderid: '1458642', amount: '699.4', time: 'Apr 12, 03:16 PM'),
              ListViewCustom(imagelink: 'https://images.unsplash.com/photo-1553859943-a02c5418b798?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHQlMjBzaGlydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', orderid: '1455001', amount: '699', time: 'Apr 12, 03:16 PM'),
              ListViewCustom(imagelink: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', orderid: '1688068', amount: '799', time: 'Jul 12, 02:06 PM'),
            ListViewCustom(imagelink: 'https://media.istockphoto.com/photos/coffee-mug-with-text-happy-bosss-day-in-workplace-background-picture-id1312544779?b=1&k=20&m=1312544779&s=170667a&w=0&h=6V98dmVX-zdqoqxylzrRgxIo8mYSBo0kt2mKzTkHmz4=', orderid: '1385547', amount: '1099.50', time: 'Jun 13, 05:06 PM'),
              ListViewCustom(imagelink: 'https://media.istockphoto.com/photos/coffee-mug-with-text-happy-bosss-day-in-workplace-background-picture-id1312544779?b=1&k=20&m=1312544779&s=170667a&w=0&h=6V98dmVX-zdqoqxylzrRgxIo8mYSBo0kt2mKzTkHmz4=', orderid: '1124589', amount: '1101.03', time: 'Jan 11, 04:15 AM')
            ],
          ),
        ),
      ),
    );
  }
}
