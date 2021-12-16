import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List todoList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Add Shop",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "Manager Name",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "Person Name",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(500)),
                      child: Container(
                        width: 60,
                        height: 60,
                        color: Colors.red.shade900,
                        child: Image.asset(
                          "assets/images/person.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      )),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Raju Ram",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      Text(
                        "Raju Ram store",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Visibility(
                  visible: todoList.isNotEmpty,
                  child: ListView.separated(
                    itemCount: todoList.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return singleItem(index);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        color: Colors.black,
                      );
                    },
                  ),
                ),
                addForm(),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 50,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Center(
              child: Text(
                "Upload",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        )

      ],
    );
  }

  Widget addForm() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Shop Name",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          hintText: 'Enter shop name',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Location",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          hintText: 'Enter Location',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Total Amount",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          hintText: 'Enter Amount',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Target",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          hintText: 'Enter Target',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                todoList.add("add 1");
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 50,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  "Add More",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget singleItem(int index) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Shop Name",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        enabled: false,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Location",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        enabled: false,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Total Amount",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        enabled: false,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Target",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        enabled: false,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter valid input';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: kTextFormDecorationLogin.copyWith(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      todoList.remove(todoList[index]);
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .4,
                    height: 50,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Delete",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * .4,
                    height: 50,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "update to do list",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

var kTextFormDecorationLogin = InputDecoration(
  filled: true,
  fillColor: Colors.grey.shade100,
  labelStyle: const TextStyle(color: Colors.black),
  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  hintStyle: const TextStyle(color: Colors.grey),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
