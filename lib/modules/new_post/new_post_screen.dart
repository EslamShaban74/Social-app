import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/layout/social_app/cubit/cubit.dart';
import 'package:social_app/layout/social_app/cubit/states.dart';
import 'package:social_app/shared/components/components.dart';
import 'package:social_app/shared/style/icon_broken.dart';

class NewPostScreen extends StatelessWidget {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: defaultAppBar(
            context: context,
            title: 'Create Post',
            actions: [
              defaultTextButton(
                  function: () {
                    var now = DateTime.now();
                    if (SocialCubit.get(context).postImage == null) {
                      SocialCubit.get(context).createPost(
                        dateTime: now.toString(),
                        text: textController.text,
                      );
                    } else {
                      SocialCubit.get(context).uploadPostImage(
                        dateTime: now.toString(),
                        text: textController.text,
                      );
                    }
                  },
                  text: 'Post'),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                if (state is SocialCreatePostLoadingState)
                  LinearProgressIndicator(),
                if (state is SocialCreatePostLoadingState)
                  const SizedBox(height: 10.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg'),
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: Text(
                        'Eslam Shaban',
                        style: TextStyle(height: 1.4),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: TextFormField(
                    controller: textController,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Whats is on your mind?',
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                if (SocialCubit.get(context).postImage != null)
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image:
                                FileImage(SocialCubit.get(context).postImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          SocialCubit.get(context).removePostImage();
                        },
                        icon: CircleAvatar(
                          radius: 20.0,
                          child: Icon(
                            Icons.close,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          SocialCubit.get(context).getPostImage();
                        },
                        child: Row(
                          children: [
                            Icon(IconBroken.Image),
                            const SizedBox(width: 5.0),
                            Text('Add photo'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child:
                            TextButton(onPressed: () {}, child: Text('#tags')))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
