import 'package:flutter/material.dart';

class TextFieldAndForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入框和表单'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: TextFieldForm(),
        ),
      ),
    );
  }
}

class TextFieldForm extends StatefulWidget {
  @override
  _TextFieldFormState createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  final TextEditingController _userNameController = TextEditingController();

  void initState() {
    super.initState();
    _userNameController.addListener(() {
      print(_userNameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            autofocus: true,
            controller: _userNameController,
            onChanged: (v) {
              print("onChanged: $v");
            },
            decoration: InputDecoration(
                labelText: "username",
                hintText: "username/email",
                prefixIcon: Icon(Icons.person),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "password",
                hintText: "password",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
          FormTest()
        ],
      ),
    );
  }
}

class FormTest extends StatefulWidget {
  @override
  _FormTestState createState() => new _FormTestState();
}

class _FormTestState extends State<FormTest> {
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: "username",
                hintText: "username/email",
                icon: Icon(Icons.person),
              ),
              validator: (v) {
                return v.trim().length > 0 ? null : "username must not be null";
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: InputDecoration(
                  labelText: "password",
                  hintText: "password",
                  icon: Icon(Icons.lock)),
              obscureText: true,
              validator: (v) {
                return v.trim().length > 5
                    ? null
                    : "password must be longer than 5";
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      child: Text("log in"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if ((_formKey.currentState as FormState).validate()) {
                          //valid
                        }
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
