import 'package:flutter/material.dart';
import 'package:gym_owner_app/screens/myDashboardScreen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String text, BuildContext context, Function tapHandler) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            fontSize: 18, color: Theme.of(context).textTheme.headline2.color),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.only(top: 70, left: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gym Owner: ',
                    style: TextStyle(color: Colors.grey[200], fontSize: 14),
                  ),
                  Text(
                    'Medhat Ahmed',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                        fontWeight: FontWeight.w900,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildListTile('My Dashboard', context, () {
              Navigator.of(context)
                  .pushReplacementNamed(MyDashboardScreen.routeName);
            }),
            Divider(
              color: Colors.grey[200],
            ),
            buildListTile('Registrations', context, () {
              // Navigator.of(context)
              //     .pushReplacementNamed(OrdersScreen.routeName);
            }),
            Divider(
              color: Colors.grey[200],
            ),
            buildListTile('Packages', context, () {
              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
            }),
            Divider(
              color: Colors.grey[200],
            ),
            buildListTile('Staffs', context, () {
              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
            }),
            Divider(
              color: Colors.grey[200],
            ),
            buildListTile('Members', context, () {
              Navigator.of(context)
                  .pop(); //dee 3ashan ta2fl el bar...ana 3arf 2nee 2wl ma hadoos hna 3al logout harooh la page tanya w msh hayafr2 ma3aya 2aflt el drawer wla la2 bs fhowa lazm 2a2fl el drawer hata lw msh hahaeis beeh 3ashan mayadaneesh error

              Navigator.of(context).pushReplacementNamed(
                  '/'); //the instructor recommend always go to slash, slash nothing and that is the home route. Since you always go there, you ensure that this logic here in the main.dart file will always run whenever the logout button is pressed and since this always runs and since this home route is always loaded, we will always end up on the AuthScreen when we clear our data in the logout method of the auth provider. So simply add this additional line here and go to your home route to ensure that you never have unexpected behaviors when logging out.

              // Provider.of<AuthProvider>(context, listen: false).logOut();
            }),
            Divider(
              color: Colors.grey[200],
            ),
            buildListTile('Account', context, () {
              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
            }),
            Divider(
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
