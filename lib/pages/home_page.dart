import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widgets/custom_list.dart';
import 'package:future_job/widgets/job_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 24, right: 24, bottom: 30),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: greyTextColor.copyWith(fontSize: 16),
                ),
                Text(
                  'Jason Powell',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 24),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/image_profile.png',
              width: 58,
              height: 58,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Category',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                        text: 'Website Developer',
                        imageUrl: 'assets/images/image_category1.png'),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                        text: 'Mobile Developer',
                        imageUrl: 'assets/images/image_category2.png'),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                        text: 'App\nDesigner',
                        imageUrl: 'assets/images/image_category3.png'),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                        text: 'Content\nWriter',
                        imageUrl: 'assets/images/image_category4.png'),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                        text: 'Video\nGrapher',
                        imageUrl: 'assets/images/image_category5.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Just Posted'),
              SizedBox(
                height: 16,
              ),
              CustomList(
                  jobTitle: 'Front-End Developer',
                  company: 'Google',
                  imageUrl: 'assets/images/icon_google.png'),
              SizedBox(
                height: 17,
              ),
              CustomList(
                  jobTitle: 'UI Designer',
                  company: 'Instagram',
                  imageUrl: 'assets/images/icon_instagram.png'),
              SizedBox(
                height: 17,
              ),
              CustomList(
                  jobTitle: 'Data Scientist',
                  company: 'Facebook',
                  imageUrl: 'assets/images/icon_facebook.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top:20),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: greyColor,
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              label: '',
                icon: ImageIcon(AssetImage('assets/images/icon_home.png'))),
            BottomNavigationBarItem(
              label: '',
                icon: ImageIcon(AssetImage('assets/images/icon_notification.png'))),
            BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(AssetImage('assets/images/icon_love.png'))),
            BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(AssetImage('assets/images/icon_user.png'))),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [header(), body()],
          ),
        ),
      ),
    );
  }
}
