import 'package:flutter/material.dart';
import 'package:flutter_web_demo/theme/app_theme.dart';
import 'package:flutter_web_demo/theme/components/title/title.dart';
import 'package:flutter_web_demo/theme/ui_constants.dart';

class UserNavBarProfile extends StatelessWidget {
  const UserNavBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, bottom: 32),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: tcColorScheme.primary,
            radius: profileAvatarRadius,
            child: TitleTC(
              variant: TitleVariant.subTitle1,
              text: "U",
              color: tcColorScheme.surface,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      "userName",
                      style: tcAppTheme.textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "abc@gmail.com",
                    style: tcAppTheme.textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
