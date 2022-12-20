import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget _cupImage() {
  const String logoPath = 'assets/images/cup.svg';
  return SvgPicture.asset(logoPath);
}

class TableWidget extends StatelessWidget {
  final String leagueName;
  final String date;
  final String status;
  final String teamOne;
  final String teamTwo;
  final String scoreTeamOne;
  final String scoreTeamtwo;

  const TableWidget(
      {Key? key,
      required this.leagueName,
      required this.date,
      required this.status,
      required this.teamOne,
      required this.teamTwo,
      required this.scoreTeamOne,
      required this.scoreTeamtwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff383838), borderRadius: BorderRadius.circular(10)),
        height: 170,
        width: double.maxFinite,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 13, top: 10, bottom: 10, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 25,
                  decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            _cupImage(),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              leagueName,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Text(
                          date,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      teamOne,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          overflow: TextOverflow.visible),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        status,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 45,
                        width: 2,
                        decoration: BoxDecoration(color: Color(0xff535353)),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Text(
                      teamTwo,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          overflow: TextOverflow.visible),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 25,
                decoration: BoxDecoration(
                    color: Color(0xff242424),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      scoreTeamOne,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      scoreTeamtwo,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
