import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/auth/presentation/views/about_you_view.dart';
import 'package:pregnancy_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:pregnancy_app/features/auth/presentation/widgets/sign_in_component.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/auth_pics/sign_in_pic.jpeg',
                height: 240,
              ),
              const Text(
                'Welcome to Pregnancy+',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 16,
              ),
               SignInComponent(
                text: 'Continue with email',
                icon: Icons.mail,
                colorComponent: Colors.lightBlueAccent,
                 onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (c)=>const AboutYouView()));
                 },
              ),
              const SizedBox(
                height: 15,
              ),
               SignInComponent(
                text: 'Continue with Google',
                icon: Icons.g_mobiledata_outlined,
                borderColor: Colors.grey,
                colorComponent: Colors.white,
                textColor: Colors.black, onTap: () {  },
              ),
              const SizedBox(
                height: 15,
              ),
              SignInComponent(
                text: 'Continue with Facebook',
                icon: Icons.facebook,
                colorComponent: Colors.blueAccent.withOpacity(1), onTap: () {  },
              ),
              const SizedBox(
                height: 15,
              ),
              SignInComponent(
                  text: 'Continue without an account',
                  colorComponent: Colors.blue.withOpacity(.4), onTap: () {  },),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: ( context)=> const SignInView()

                      )
                      );
                    },
                    child: Text(
                      ' Login',
                      style: TextStyle(color: Colors.blue.withOpacity(.4)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 33,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'By creating an account,you give us permission to securely store your date, your baby\'s birth date'
                      ', and any other data you upload.That way you\'re ensuring you\'re securely backed up! See our ',
                  style: const TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Privacy Notice ',
                      style: TextStyle(
                          color: Colors.blue.withOpacity(.4),
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: 'for our info',
                      style: TextStyle(color: Colors.grey),
                    ) // Add more TextSpan widgets for other words or styles if needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
