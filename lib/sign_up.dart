import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 5, 0, 5),
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30,bottom: 5),
          child: Text(
            "Please sign up our App",
            style: TextStyle(fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Text(
            "User Name",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[300],
            ),
            child: const TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "user name",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            )),
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Text(
            "E-mail",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[300],
            ),
            child: const TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "**************",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            )),
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Text(
            "Password (6~14)",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.fromLTRB(30,15,30,30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[300],
            ),
            child: const TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "**************",
                suffixIcon: Icon(Icons.visibility_off),
                suffixIconColor: Colors.grey,
                hintStyle: TextStyle(color: Colors.grey),
              ),
            )),

        Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.fromLTRB(30,15,30,0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Sign up"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              const Text("Already have an account?"),
              TextButton(onPressed: (){Navigator.popAndPushNamed(context, "/");}, child:const Text("Log In"))
            ],
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            width: 50,
            child: Row(
              children:const [
                Expanded(
                    child: Divider(
                      color: Colors.black,
                    )),
                Text("Or"),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        const  SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("images/facebook.png"),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("images/instagram.png"),
            ),
            SizedBox(width: 20,),
            CircleAvatar(
              backgroundImage: AssetImage("images/twitter.png"),
            ),
          ],
        )
      ],
    ),);
  }
}
