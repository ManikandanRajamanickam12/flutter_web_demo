import 'package:flutter/material.dart';
import 'package:flutter_web_demo/common/widgets/user_nav_bar_profile.dart';
import 'package:flutter_web_demo/routing/app_route_constants.dart';
import 'package:flutter_web_demo/theme/components/buttons.dart';
import 'package:flutter_web_demo/theme/components/text/text.dart';
import 'package:flutter_web_demo/theme/ui_constants.dart';
import 'package:go_router/go_router.dart';

class MobileAppDrawer extends StatelessWidget {
  const MobileAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserNavBarProfile(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    children: [
                      _DrawerListTile(
                        iconData: Icons.edit,
                        name: "Option-1",
                        onTap: () {
                          context.goNamed(AppRouteConstants.optionOneRouteName,
                              extra: {"message": "Hello"});
                        },
                      ),
                      _DrawerListTile(
                        iconData: Icons.person,
                        name: "Option-2",
                        onTap: () {
                          context.goNamed(AppRouteConstants.optionTwoRouteName);
                        },
                      ),
                      _DrawerListTile(
                        iconData: Icons.favorite,
                        name: "Option-3",
                        onTap: () {
                          context
                              .goNamed(AppRouteConstants.optionThreeRouteName);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Button(
                  variant: ButtonVariant.primary,
                  size: ButtonSize.small,
                  onPressed: () {},
                  label: "LOGOUT"),
            )
          ],
        ),
      ),
    );
  }
}

class _DrawerListTile extends StatelessWidget {
  final String name;
  final IconData iconData;
  final Function onTap;
  const _DrawerListTile({
    required this.name,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListTile(
      leading: SizedBox(
        width: 42,
        height: 42,
        child: CircleAvatar(
          backgroundColor: theme.colorScheme.primary,
          radius: drawerListTileAvatarRadius,
          child: Icon(
            iconData,
            color: theme.colorScheme.background,
            size: 24,
          ),
        ),
      ),
      title: TextTC(
        variant: TextVariant.body1,
        text: name,
      ),
      onTap: () => onTap(),
    );
  }
}
