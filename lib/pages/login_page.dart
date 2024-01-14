import 'package:firebase_auth/firebase_auth.dart';
import 'package:human_interaction_proj/components/my_button.dart';
import 'package:human_interaction_proj/components/my_textfield.dart';
import 'package:human_interaction_proj/components/my_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

     // try sign in
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
   // pop the loading circle
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    print("Firebase Authentication Error: ${e.code} - ${e.message}");
    // pop the loading circle
    Navigator.pop(context);
    // show error message
    showErrorMessage(e.code);
  }
}

  // error message to user
  void showErrorMessage (String message)  {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    ); 
  }  
  
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                
                Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 80,
                  ),
                ),

                const SizedBox(height: 30),

                // username textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Username',
                  obscureText: false, errorText: null,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true, errorText: null,
                ),

                const SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyCheckbox(),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 30),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 65),

                // not a member? register now
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do not have an account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Sign Up ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
