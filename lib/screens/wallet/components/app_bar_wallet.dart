part of '../../../components/widgets.dart';

class AppBarWallet extends StatelessWidget implements PreferredSize {
 
 
 const AppBarWallet({
     required this.context,
    Key? key,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: child,
    );
  }

  @override
  // TODO: implement child
  Widget get child => Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 17, 24, 36),
                        Color.fromARGB(255, 6, 13, 24)
                      ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: 10,
            ),
            AppBar(
              automaticallyImplyLeading: false,

              elevation: 0,
              // centerTitle: true,
              title: Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsets.only(left: 5, right: 0),
                  child: GestureDetector(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: darkTheme.colorScheme.secondary,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 16,color: darkTheme.colorScheme.secondary,),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.pushNamed(context, '/home'),
                  )),
              actions: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Portafolio',
                   style: TextStyle(fontSize: 16),
                   ),
                  
                  ),
                SizedBox(
                  width: 110,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_circle_up_sharp)),
              ],
            ),
          ],
        );

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(76);
}