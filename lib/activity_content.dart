import 'package:flutter/material.dart';
import 'package:task_3/main.dart';

Widget ActivityContent(BuildContext context) {
  List users = [getUser().name, getUser().name, getUser().name, getUser().name, getUser().name, getUser().name, getUser().name, getUser().name];
  return ListView.separated(
    padding: const EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      itemCount: users.length,
      itemBuilder: (_, index) => GestureDetector(
        child: ListTile(

          leading: CircleAvatar(backgroundImage: AssetImage(getUser().img)),
          title: Text(
            users[index],
            style:  const TextStyle(fontWeight: FontWeight.bold),
          ),
            subtitle:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (index%2==0)? RichText(text:  TextSpan(
                children:  <TextSpan>[
                  TextSpan(text: "Added ", style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(text: '''"Autumn in my heart"''', style: Theme.of(context).textTheme.titleSmall)
                ]
                )
                )
                    :
                RichText(text: TextSpan(style: Theme.of(context).textTheme.bodyMedium,
                    children:  <TextSpan>[
                      TextSpan(text: "Liked ", style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(text: '''"Autumn in my heart"''', style: Theme.of(context).textTheme.titleSmall)
                    ]
                )
                ),
                Text("2 Minutes ago", style: TextStyle(color: Colors.grey[400],fontSize: 12),)
              ],
            ),
          iconColor: Colors.white,
          trailing: (index%2==0)? Image.asset("assets/images/cover.jpg"):
           const OutlinedButton(onPressed: onPressed, child: Text("Follow")),
        ),
        onTap: (){
          print(getUser().name);
        },
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: 15,
      ),
  );
}
void onPressed() {
  print("${getUser().name} Follow");
}
