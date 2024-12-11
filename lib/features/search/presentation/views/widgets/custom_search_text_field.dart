import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          suffixIcon:  IconButton(
              onPressed: () {

              },
              icon: const Opacity(
                opacity: 0.8,
                child: Icon(
                  Icons.search,
                  size: 35,
                ),
              ))
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(12)
    );
  }
}
