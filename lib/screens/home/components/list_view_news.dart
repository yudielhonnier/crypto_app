part of '../../../components/widgets.dart';


class ListViewNews extends StatelessWidget {
  const ListViewNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context,index)=>  ListTile(
            contentPadding: EdgeInsets.only(left: 0),
            title: Text('Digital Assets to Transform Financial Infrastructure',style: TextStyle(height: 1.6),),
            subtitle: Text('5h agao',style: TextStyle(height: 2.2)),
            trailing:  Container(
               decoration: BoxDecoration(
                 color: darkTheme.colorScheme.primary,
                 border: Border.all(color: darkTheme.colorScheme.secondary,),
               ),
              padding: EdgeInsets.all(0), 
              width:90 ,
              height:60 , 
             
              child: Icon(Icons.grain_sharp,
              
              size: 40)),
            // trailing: Container(padding: EdgeInsets.all(0), width:80 ,height:40 , child: Icon(Icons.grain_sharp,size: 80,)),
          ), 
      separatorBuilder: (context,index)=>Divider(color:darkTheme.colorScheme.secondary ,height: 18,), 
      itemCount: 5);
  }
}