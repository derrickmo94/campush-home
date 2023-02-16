import 'package:campass_home/provider/user_profile_provider.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/textFormField.dart';
import 'components/userprofile_card.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultPrimaryColor,
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => ProfileProvider(),
        child: Consumer<ProfileProvider>(
          builder: (context, provider, _) {
            return ListView(
              padding: pagePadding(left: 0, right: 0, bottom: 0, top: 0),
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        color: kDefaultPrimaryColor,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 80, bottom: 60),
                        margin: EdgeInsets.only(top: 150),
                        decoration: BoxDecoration(
                          color: kDefaultBackgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Personal info",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(),
                            ),
                            userprofileCardBuilder(
                              context,
                              children: [
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.mNameEditStatus,
                                  hint: "first name",
                                  prefixIcon: Icons.person,
                                  onEditTap: () {
                                    provider.mNameEditStatus =
                                        !provider.mNameEditStatus;
                                  },
                                ),
                                vLineSpace(space: kDefaultSpacing * 3),
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.mNameEditStatus,
                                  hint: "middle name",
                                  prefixIcon: Icons.person,
                                  onEditTap: () {
                                    provider.mNameEditStatus =
                                        !provider.mNameEditStatus;
                                  },
                                ),
                                vLineSpace(space: kDefaultSpacing * 3),
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.lNameEditStatus,
                                  hint: "last name",
                                  prefixIcon: Icons.person,
                                  onEditTap: () {
                                    provider.lNameEditStatus =
                                        !provider.lNameEditStatus;
                                  },
                                ),
                                vLineSpace(space: kDefaultSpacing * 3),
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.phoneEditStatus,
                                  hint: "phone number",
                                  inputType: TextInputType.phone,
                                  prefixIcon: Icons.phone,
                                  onEditTap: () {
                                    provider.phoneEditStatus =
                                        !provider.phoneEditStatus;
                                  },
                                ),
                              ],
                            ),
                            vLineSpace(space: kDefaultSpacing * 5),
                            Text(
                              "Academic Institution",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(),
                            ),
                            userprofileCardBuilder(
                              context,
                              children: [
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.instituteEditStatus,
                                  hint: "Acadmic institution",
                                  prefixIcon: Icons.school,
                                  onEditTap: () {
                                    provider.instituteEditStatus =
                                        !provider.instituteEditStatus;
                                  },
                                ),
                              ],
                            ),
                            vLineSpace(space: kDefaultSpacing * 5),
                            Text(
                              "Emergency",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(),
                            ),
                            userprofileCardBuilder(
                              context,
                              children: [
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.nextofKeenEditStatus,
                                  hint: "next of keen name",
                                  prefixIcon: Icons.person_add_alt,
                                  onEditTap: () {
                                    provider.nextofKeenEditStatus =
                                        !provider.nextofKeenEditStatus;
                                  },
                                ),
                                vLineSpace(space: kDefaultSpacing * 3),
                                textFormFieldBuilder(
                                  context,
                                  editable: provider.nextofKeenPhoneEditStatus,
                                  hint: "Next of keen phone number",
                                  inputType: TextInputType.phone,
                                  prefixIcon: Icons.phone,
                                  onEditTap: () {
                                    provider.nextofKeenPhoneEditStatus =
                                        !provider.nextofKeenPhoneEditStatus;
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(top: 80),
                        decoration: BoxDecoration(
                          color: kDefaultBackgroundColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 130,
                          color: kDefaultPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save_sharp),
        onPressed: () {},
      ),
    );
  }
}
