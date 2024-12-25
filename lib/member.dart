import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  final updateStatus;
  final getIsLocked;
  
  const MemberPage({super.key, 
    required this.updateStatus, 
    required this.getIsLocked});

  @override
  State<MemberPage> createState() => _MamberPageState();
}

class _MamberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mamber Page'),),
      body:  Center(child: Column(children: [
        const  SizedBox(height: 60,),
        btnLoginLogout(context),
        const  SizedBox(height: 30,),
        btnBack(context)
      ],),),
    );
  }
  Widget btnLoginLogout(BuildContext ctx){
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side:  const BorderSide(color:Color.fromARGB(115, 243, 209, 209))
        ),
        onPressed: (){
          widget.updateStatus(!widget.getIsLocked());
          setState(() {
            widget.getIsLocked();
          });
        },
         child: Text((!widget.getIsLocked()?'เข้าสู่ระบบ':'ออกจากระบบ')));
  }
  Widget  btnBack(BuildContext ctx){
    return TextButton(
      onPressed: ()=>Navigator.pop(ctx),
       child:const Text('<<<กลับ'));
  }
}