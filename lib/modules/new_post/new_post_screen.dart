import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/layout/social_app/cubit/cubit.dart';
import 'package:social_app/shared/components/components.dart';

class NewPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var profileImage = SocialCubit.get(context).profileImage;
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: 'Create Post',
        actions: [
          defaultTextButton(function: () {}, text: 'Post'),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('${profileImage}'),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                children: [
                  Text(
                    'Eslam Shaban',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'public',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
