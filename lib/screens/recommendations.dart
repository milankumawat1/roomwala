import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../themes/myColors.dart';

class RecommendationsPage extends StatefulWidget {
  @override
  _RecommendationsPageState createState() => _RecommendationsPageState();
}

class _RecommendationsPageState extends State<RecommendationsPage> {
  // sample data for cards
  List<Map<String, dynamic>> _cardData = [
    {
      'name': 'Richard Lukas',
      'bio':
          'Student | 25 | Searching for \n affordable single room flat\n near college in East London.',
      'imageUrl': 'https://randomuser.me/api/portraits/men/1.jpg',
      'budget': '€650/month',
      'date': '1 Dec',
      'location': 'Kensington',
    },
    {
      'name': 'Richard Lukas',
      'bio':
          'Student | 25 | Searching for \n affordable single room flat\n near college in East London.',
      'imageUrl': 'https://randomuser.me/api/portraits/men/1.jpg',
      'budget': '€650/month',
      'date': '1 Dec',
      'location': 'Kensington',
    },
    {
      'name': 'Richard Lukas',
      'bio':
          'Student | 25 | Searching for \n affordable single room flat\n near college in East London.',
      'imageUrl': 'https://randomuser.me/api/portraits/men/1.jpg',
      'budget': '€650/month',
      'date': '1 Dec',
      'location': 'Kensington',
    },
  ];

  final TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: AppColors.pri,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              leadingWidth: MediaQuery.of(context).size.width * 0.15,
              title: SizedBox(
                height: 40,
                child: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Color(0xff878787)),
                  cursorColor: Color(0xff878787),
                  decoration: const InputDecoration(
                    hintText: 'Recommendation',
                    hintStyle:
                        TextStyle(color: Color(0xff878787), fontSize: 15),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xff303147),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff878787))),
                  ),
                  onChanged: (value) {
                    // Perform search functionality here
                  },
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(5)),
                      height: 29,
                      width: 74,
                      child: Center(
                        child: InkWell(
                          // splashColor: Color(0xffF6F6F6),
                          child: Text(
                            "Filters",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15,
                                color: AppColors.pri),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: _cardData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: _buildCard(_cardData[index]),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCard(Map<String, dynamic> cardData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: ClipRRect(
                      // margin: EdgeInsets.only(right: 8.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network(cardData['imageUrl']),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardData['bio'],
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            height: 1.5,
                            color: Color(0xff878787)),
                        maxLines: 3,
                      ),
                      SizedBox(height: 15),
                      Text(
                        cardData['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.pri,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 80,
                              height: 26,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.pri),
                                onPressed: () {
                                  // TODO: Save card to profile
                                },
                                child: Text('Save'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: SizedBox(
                              height: 26,
                              width: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.pri),
                                onPressed: () {
                                  // TODO: Redirect to chat page with user
                                },
                                child: Text('Contact'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rent',
                        style: TextStyle(
                            color: Color(0xff878787),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        cardData['budget'],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.pri),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available',
                        style: TextStyle(
                            color: Color(0xff878787),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        cardData['date'],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.pri),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            color: Color(0xff878787),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        cardData['location'],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColors.pri),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
