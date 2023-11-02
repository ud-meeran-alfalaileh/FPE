import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/model/froms_model.dart';
import 'package:tasks_flutter/src/widget/custome_widget/button_widget.dart';
import 'package:tasks_flutter/src/widget/forms_widget/forms_widget.dart';
import 'package:tasks_flutter/src/widget/text_widget/form_text.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: 400,
          height: 700,
          child: Form(
            child: ListView(children: [
              mainText("Complete Profile"),
              subText(
                "Complete your details or continue\n with social media",
              ),
              const SizedBox(
                height: 80,
              ),
              FormWidget(
                  form: Forms(
                      label: "First Name",
                      // controller: controller.fname,
                      enableText: false,
                      hintText: "Enter your First name",
                      icon: const Icon(Icons.person_2_outlined),
                      invisible: false,
                      validator: null,
                      type: TextInputType.name,
                      onChange: null,
                      inputFormat: null)),
              const SizedBox(
                height: 20,
              ),
              FormWidget(
                  form: Forms(
                      label: "Last Name ",
                      //controller: controller.lname,
                      enableText: false,
                      hintText: "Enter your lasr name",
                      icon: const Icon(Icons.person_2_outlined),
                      invisible: true,
                      validator: null,
                      type: TextInputType.name,
                      onChange: null,
                      inputFormat: null)),
              const SizedBox(
                height: 20,
              ),
              FormWidget(
                  form: Forms(
                      label: "phone Numer",
                      //controller: controller.phone,
                      enableText: false,
                      hintText: "Enter Your Phone Number",
                      icon: const Icon(Icons.phone_android),
                      invisible: false,
                      validator: null,
                      type: TextInputType.phone,
                      onChange: null,
                      inputFormat: null)),
              const SizedBox(
                height: 20,
              ),
              FormWidget(
                  form: Forms(
                      label: "Address",
                      enableText: false,
                      hintText: "Enter You Phone Number",
                      icon: const Icon(Icons.location_on_outlined),
                      invisible: true,
                      validator: null,
                      type: TextInputType.name,
                      onChange: null,
                      inputFormat: null)),
              const SizedBox(
                height: 50,
              ),
              Button(onTap: () {}, title: "Continue"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                style: TextStyle(
                  color: Color.fromARGB(108, 0, 0, 0),
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
