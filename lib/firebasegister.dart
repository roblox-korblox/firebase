import 'package:flutter/material.dart';

class Firebasegister extends StatefulWidget {
  const Firebasegister({super.key});

  @override
  State<Firebasegister> createState() => _FirebasegisterState();
}

class _FirebasegisterState extends State<Firebasegister> {

  bool obscurePassword = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),

            child: Column(
              children: [

                const SizedBox(height: 10),

                // TOP SECTION
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    const SizedBox(width: 40),

                    // TITLE
                    const Text(
                      "REGISTER ACCOUNT",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // LANGUAGE BUTTON
                    GestureDetector(
                      onTap: () {
                        // language action
                      },

                      child: Image.asset(
                        'assets/ukphere.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // NAME
                TextField(
                  decoration: InputDecoration(
                    hintText: "Name",

                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),

                    contentPadding:
                        const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // EMAIL
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",

                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),

                    contentPadding:
                        const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // PASSWORD
                TextField(
                  obscureText: obscurePassword,

                  decoration: InputDecoration(
                    hintText: "Password",

                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),

                    contentPadding:
                        const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),

                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),

                      onPressed: () {
                        setState(() {
                          obscurePassword =
                              !obscurePassword;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // PHONE NUMBER
                Row(
                  children: [

                    // COUNTRY CODE
                    Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 16,
                      ),

                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey),
                        borderRadius:
                            BorderRadius.circular(30),
                      ),

                      child: const Row(
                        children: [
                          Text(
                            "🇮🇩 +62",
                            style:
                                TextStyle(fontSize: 18),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    // PHONE FIELD
                    Expanded(
                      child: TextField(
                        keyboardType:
                            TextInputType.phone,

                        decoration: InputDecoration(
                          hintText: "Mobile Number",

                          border:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(
                                    30),
                          ),

                          contentPadding:
                              const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // REFERRAL CODE
                TextField(
                  decoration: InputDecoration(
                    hintText:
                        "Referral Code (if any)",

                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),

                    contentPadding:
                        const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // CHECKBOX
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    Checkbox(
                      value: isChecked,

                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),

                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(
                                top: 12),

                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),

                            children: [
                              TextSpan(
                                text:
                                    "I have read and agreed on\n",
                              ),

                              TextSpan(
                                text:
                                    "Term and Condition & Privacy Policy",

                                style: TextStyle(
                                  color:
                                      Color.fromARGB(
                                          255,
                                          0,
                                          180,
                                          140),

                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // REGISTER BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 60,

                  child: ElevatedButton(
                    onPressed:
                        isChecked ? () {} : null,

                    style:
                        ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(
                              255, 0, 211, 158),

                      foregroundColor:
                          Colors.white,

                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                30),
                      ),
                    ),

                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                const Text(
                  "Or create account using Google",
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 20),

                // GOOGLE BUTTON
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,

                  child: Image.asset(
                    'assets/google.png',
                  ),
                ),

                const SizedBox(height: 100),

                // LOGIN TEXT
                Column(
                  children: [

                    const Text(
                      "Already have a Kasir Pintar account?",
                      style: TextStyle(fontSize: 18),
                    ),

                    GestureDetector(
                      onTap: () {},

                      child: const Text(
                        "Sign in here",
                        style: TextStyle(
                          color:
                              Color.fromARGB(
                                  255,
                                  0,
                                  180,
                                  140),

                          fontSize: 18,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}