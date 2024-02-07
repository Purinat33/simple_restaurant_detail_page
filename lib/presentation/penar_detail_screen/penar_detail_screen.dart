import '../penar_detail_screen/widgets/userprofilesection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kitiphum_s_application4/core/app_export.dart';
import 'package:kitiphum_s_application4/widgets/custom_icon_button.dart';

class PenarDetailScreen extends StatelessWidget {
  const PenarDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildPicSection(context),
                  SizedBox(height: 75.v),
                  _buildSixSection(context),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("RESTAURANT CONTACT",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 9.v),
                  _buildUserProfileSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildPicSection(BuildContext context) {
    return SizedBox(
        height: 192.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPic,
              height: 192.v,
              width: 430.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 192.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: 192.v,
                        width: 430.h,
                        radius: BorderRadius.circular(15.h),
                        alignment: Alignment.center),
                    Padding(
                        padding: EdgeInsets.only(left: 11.h, top: 46.v),
                        child: CustomIconButton(
                            height: 38.adaptSize,
                            width: 38.adaptSize,
                            alignment: Alignment.topLeft,
                            onTap: () {
                              onTapBtnUnionOne(context);
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgUnion1)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildSixSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("10.00-21.00", style: CustomTextStyles.titleLargeGray600),
          SizedBox(
              height: 24.v,
              width: 75.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 24.v,
                        width: 75.h,
                        decoration: BoxDecoration(
                            color: appTheme.lightGreenA700,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("OPEN", style: CustomTextStyles.titleLargeRegular))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 11.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofilesectionItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapBtnUnionOne(BuildContext context) {
    Navigator.pop(context);
  }
}
