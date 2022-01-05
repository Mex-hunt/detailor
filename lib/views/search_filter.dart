import 'package:flutter/material.dart';

class SearchFilterField extends StatelessWidget {
  const SearchFilterField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(251, 251, 251, 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 15),
          Expanded(
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(border: InputBorder.none),
              onSubmitted: (value) {},
            ),
          ),
          SizedBox(width: 15),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.filter_list, color: Colors.grey),
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
