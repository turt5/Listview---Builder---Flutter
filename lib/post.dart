import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.child, required this.post_img, required this.profile_pic});

  final String child;
  final String post_img;
  final String profile_pic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(5),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profile_pic),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(child,style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text('24m',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(width: 10,),
                          Icon(Icons.people,color: Colors.black,size: 15,)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Expanded(child: Container(
            child: Image.asset(post_img,fit:BoxFit.cover,),
          )),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_outline_rounded,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text('Like',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),)
                  ],
                ),Row(
                  children: [
                    Icon(CupertinoIcons.chat_bubble,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text('Comment',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),)
                  ],
                ),Row(
                  children: [
                    Icon(CupertinoIcons.share,color: Colors.black),
                    SizedBox(width: 8,),
                    Text('Share',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),)
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
