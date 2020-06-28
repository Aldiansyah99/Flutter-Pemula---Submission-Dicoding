import 'package:flutter/material.dart';
import 'package:movie_catalogue/model/upcoming.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/detail/detail_upcoming.dart';

class ListUpComing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: upcoming.map((data) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailUpcoming(upComing: data)));
            },
            child: Container(
              width: 110,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        child: Image.network(
                          data.poster,
                          fit: BoxFit.cover,
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: <Color>[
                              Colors.black,
                              Colors.transparent,
                            ])),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            data.title,
                            style: whiteTextFont,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

var upcoming = [
  UpComing(
    title: 'Britt-Marie Was Here',
    poster: 'https://image.tmdb.org/t/p/w342///1Duc3EBiegywczxTWekvy03HWai.jpg',
    description:
        'Britt-Marie, a woman in her sixties, decides to leave her husband and start anew. Having been housewife for most of her life and and living in small backwater town of Borg, there isnt many jobs available and soon she finds herself fending a youth football team.',
    vote: '4.3',
    backdrop:
        'https://image.tmdb.org/t/p/original///oCFbh4Mrd0fuGanCgIF6sG27WGD.jpg',
    release: '2019-01-25',
    language: 'EN',
  ),
  UpComing(
    title: 'Rambo: Last Blood',
    poster: 'https://image.tmdb.org/t/p/w342///kTQ3J8oTTKofAVLYnds2cHUz9KO.jpg',
    description:
        'After fighting his demons for decades, John Rambo now lives in peace on his family ranch in Arizona, but his rest is interrupted when Gabriela, the granddaughter of his housekeeper María, disappears after crossing the border into Mexico to meet her biological father. Rambo, who has become a true father figure for Gabriela over the years, undertakes a desperate and dangerous journey to find her.',
    vote: '6.3',
    backdrop:
        'https://image.tmdb.org/t/p/original///3IHqwENGxOb36Jgeot4XHs3BTxz.jpg',
    release: '2019-09-19',
    language: 'EN',
  ),
  UpComing(
    title: 'Guns Akimbo',
    poster: 'https://image.tmdb.org/t/p/w342///2kNnf7BwRCEm4bcFkdiE0T4U25s.jpg',
    description:
        'An ordinary guy suddenly finds himself forced to fight a gladiator-like battle for a dark website that streams the violence for viewers. Miles must fight heavily armed Nix and also save his kidnapped ex-girlfriend.',
    vote: '6.4',
    backdrop:
        'https://image.tmdb.org/t/p/original///xBHTHkNL1Urhc8K8NHzIih7unjs.jpg',
    release: '2019-09-09',
    language: 'EN',
  ),
  UpComing(
    title: 'Brahms: The Boy II',
    poster: 'https://image.tmdb.org/t/p/w342//tIpGQ9uuII7QVFF0GHCFTJFfXve.jpg',
    description:
        'After a family moves into the Heelshire Mansion, their young son soon makes friends with a life-like doll called Brahms.',
    vote: '6.4',
    backdrop:
        'https://image.tmdb.org/t/p/original///rpGYHowXtjw37UxdwO1ZcK5E8IN.jpg',
    release: '2020-02-20',
    language: 'EN',
  ),
  UpComing(
    title: 'Emma.',
    poster: 'https://image.tmdb.org/t/p/w342//uHpHzbHLSsVmAuuGuQSpyVDZmDc.jpg',
    description:
        'In 1800s England, a well-meaning but selfish young woman meddles in the love lives of her friends.',
    vote: '7',
    backdrop:
        'https://image.tmdb.org/t/p/original///5GbkL9DDRzq3A21nR7Gkv6cFGjq.jpg',
    release: '2020-02-13',
    language: 'EN',
  ),
];
