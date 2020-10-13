import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
  }

 
class MyApp extends StatefulWidget {
  
  @override
  _State createState() => _State();
}
 
class _State extends State<MyApp> {
  
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body:  
        Form(
         child:Padding(
            padding: EdgeInsets.all(10),
            
            child: ListView(
              children: <Widget>[
                
               
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                   
                   controller: nameController,
                   
                   decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide (color: Colors.red),),
                      
                      labelText: 'First Name',
                    ),
                  ),
                ),
                 



                   


                    
                 
               Container(
                  
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: lnameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide (color: Colors.red),


                      ),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                 

                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: emailController ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide (color: Colors.red),
                      ),
                      labelText: 'Enter email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide (color: Colors.red),
                      ),
                      labelText: 'Phone no.',
                    ),keyboardType: TextInputType.number,
                    maxLength: 10,

                  ),
                ),


                
                  Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: cpasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide (color: Colors.red),
                      ),
                      labelText: 'Enter Password',
                    ),
                  ),
                ),

                 

                 
                 
                 
                  Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: cpasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide (color: Colors.red),
                      ),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),



                
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

                    
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Register', style: TextStyle(
                          
                          fontWeight: FontWeight.w500,
                          fontSize: 25),


                     ),
                      onPressed: () {
                         print(lnameController.text);
                       
                       
                        print(passwordController.text);

                        setState(() {
                          print("Form Validation :" + _formKey.currentState.validate().toString());
                        });


                        }
                        
                        
                        
                        
                      
                    )),
                Container(
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )
            
            
            ),
    ),

    );
    
  }
}