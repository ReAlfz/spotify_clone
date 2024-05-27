import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/main_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.label,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          height: media.size.height,
          width: media.size.width,
          child: Stack(
            children: [
              Container(
                height: media.size.height / 2,
                width: media.size.width,
                decoration: const BoxDecoration(
                  color: MainColors.primaryColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(60),
                  )
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      'Do you want to listen to a song?, just on spotify',
                      style: TextStyle(
                        fontSize: 18,
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),


              SingleChildScrollView(
                child: SizedBox(
                  height: media.size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: media.size.height / 1.9,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Login Account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            const SizedBox(height: 22,),
                            const SizedBox(
                              height: 40,
                              child: Input(
                                hint: 'Email or Username',
                                icon: CupertinoIcons.mail,
                              ),
                            ),

                            const SizedBox( height:16),

                            const SizedBox(
                              height: 40,
                              child: Input(
                                hint: 'Password',
                                icon: CupertinoIcons.eye,
                              ),
                            ),

                            const SizedBox(height: 16),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Remember me',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: MainColors.starterWhite,
                                  ),
                                ),

                                CupertinoSwitch(
                                  value: rememberMe,
                                  onChanged: (bool value) {
                                    setState(() {
                                      rememberMe = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatefulWidget {
  final String hint;
  final IconData icon;
  const Input({super.key, required this.hint, required this.icon});

  @override
  State<StatefulWidget> createState() => _Input();
}

class _Input extends State<Input> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      prefix: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Icon(widget.icon),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: (_focusNode.hasFocus) ? MainColors.primaryColor : MainColors.starterWhite),
        borderRadius: BorderRadius.circular(20),
      ),
      focusNode: _focusNode,
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}