import 'package:flutter/material.dart';
import 'package:social_app/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHide = true;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Jack Brown',
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Welcome back',
                style: TextStyle(fontSize: 40),
              ),
              // Text(controller.text),
              TextFormField(
                controller: controller,
                obscureText: isHide,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isHide = !isHide;
                        });
                      },
                      icon: Icon(
                          isHide ? Icons.visibility_off : Icons.visibility)),
                ),
                onChanged: (d) {
                  setState(() {});
                },
              ),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: controller.text.length < 6
                    ? null
                    : () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }),
                        );
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
