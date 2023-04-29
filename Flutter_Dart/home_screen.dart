import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'search.dart' as search;
import 'package:carousel_slider/carousel_slider.dart';
import 'carousel.dart' as carousel;
import 'courseList.dart' as course;

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              color: Colors.amber,
              child: Text('날씨..'),
            ),
            buttonBar1(),
            buttonBar2(),
            Container(
              height: 300.0,
              child: carousel.ComplicatedImageDemo(),
            ),
          ],
        ),
      ),
    ));
  }
}

buttonBar1() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50.0,
          decoration: iconBoxDeco(),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
          ),
        ),
        Container(
          decoration: iconBoxDeco(),
          width: 300.0,
          child: searchButtonBar(),
        )
      ],
    ),
  );
}

buttonBar2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const register.Register()),
          // );
        },
        child: Container(
          width: 80.0,
          height: 80.0,
          decoration: iconBoxDeco(),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.route), Text('코스 작성')],
            ),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const search.Search()),
          // );
        },
        child: Container(
          width: 80.0,
          height: 80.0,
          decoration: iconBoxDeco(),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.star_outline), Text('관심 목록')],
            ),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const search.Search()),
          // );
        },
        child: Container(
          width: 80.0,
          height: 80.0,
          decoration: iconBoxDeco(),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.account_circle), Text('마이페이지')],
            ),
          ),
        ),
      )
    ],
  );
}

iconBoxDeco() {
  return BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(10));
}

// themes() {
//   var themeList = course.THEME_LIST;

//   List<MultiSelectCard> cards = [];
//   for (var theme in themeList) {
//     var card = MultiSelectCard(
//       value: theme['text'],
//       label: theme['text'],
//       decorations: MultiSelectItemDecorations(
//         // 선택 전 테마 스타일
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 3,
//               offset: Offset(0, 2), // changes position of shadow
//             ),
//           ],
//         ),
//       ),
//     );
//     cards.add(card);
//   }
//   ;
// }

TextEditingController searchTextEditingController = TextEditingController();

emptyTheTextFormField() {
  searchTextEditingController.clear();
}

controlSearching(str) {}

searchButtonBar() {
  return TextFormField(
    controller: searchTextEditingController,
    decoration: InputDecoration(
      hintText: "원하는 코스를 검색해보세요",
      hintStyle: TextStyle(color: Colors.grey),
      // enabledBorder: UnderlineInputBorder(
      //   borderSide: BorderSide(color: Colors.grey),
      // ),
      // focusedBorder: UnderlineInputBorder(
      //   borderSide: BorderSide(color: Colors.white),
      // ),
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.search),
        color: Colors.grey,
        iconSize: 30,
        onPressed: () {
          print("${searchTextEditingController.text} 검색하기");
        },
      ),
    ),
    style: TextStyle(
      fontSize: 18,
      color: Colors.black,
    ),
    onFieldSubmitted: controlSearching,
  );
}
