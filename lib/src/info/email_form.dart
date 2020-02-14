import 'package:flutter/material.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';

class EmailForm extends StatefulWidget {
  @override
  EmailFormState createState() => EmailFormState();
}

class EmailFormState extends State<EmailForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final fabVisibility = Provider.of<FabProvider>(context, listen: true);
    fabVisibility.globalKey = _formKey;
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 12),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Name must not be empty";
                }
                if (!isAlpha(value)) {
                  return "Name must contain only text";
                }
                return null;
              },
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "What do people call you?",
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 12),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Subject must not be empty";
                }
                return null;
              },
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                  icon: Icon(MdiIcons.text),
                  hintText: "What are you contacting us about?",
                  labelText: "Subject",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 12),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Subject must not be empty";
                }
                return null;
              },
              keyboardType: TextInputType.multiline,
              maxLines: 40,
              minLines: 10,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                  icon: Icon(Icons.subject),
                  hintText: "Write your feedback here.",
                  labelText: "Body",
                  alignLabelWithHint: true,
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
