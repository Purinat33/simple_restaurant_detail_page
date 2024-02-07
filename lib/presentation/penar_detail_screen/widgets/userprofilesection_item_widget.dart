import 'package:flutter/material.dart';
import 'package:kitiphum_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  const UserprofilesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "LOCATION",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLinkedin,
                height: 21.v,
                width: 16.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
          Text(
            "123 Street Khonsuay Rd soi 20",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 31.v),
        ],
      ),
    );
  }
}
