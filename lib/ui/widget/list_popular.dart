import 'package:flutter/material.dart';
import 'package:movie_catalogue/model/popular.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/detail/detail_popular.dart';

class ListPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: popular.map((data) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPopular(popular: data)));
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

var popular = [
  Popular(
    title: 'Artemis Fowl',
    poster: 'https://image.tmdb.org/t/p/w342///mhDdx7o7hhrxrikq8aqPLLnS9w8.jpg',
    description:
        'With the help of his loyal protector Butler, 12-year-old genius Artemis Fowl, descendant of a long line of criminal masterminds, seeks to find his mysteriously disappeared father, and in doing so, uncovers an ancient, underground civilization—the amazingly advanced world of fairies. Deducing that his father’s disappearance is somehow connected to the secretive, reclusive fairy world, cunning Artemis concocts a dangerous plan—so dangerous that he ultimately finds himself in a perilous war of wits with the all-powerful fairies.',
    vote: '5.8',
    backdrop:
        'https://image.tmdb.org/t/p/original///3CIae0GrhKTIzNS3FYYvT8P9D3w.jpg',
    release: '2020-06-12',
    language: 'EN',
  ),
  Popular(
    title: 'Ad Astra',
    poster: 'https://image.tmdb.org/t/p/w342///xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg',
    description:
        'The near future, a time when both hope and hardships drive humanity to look to the stars and beyond. While a mysterious phenomenon menaces to destroy life on planet Earth, astronaut Roy McBride undertakes a mission across the immensity of space and its many perils to uncover the truth about a lost expedition that decades before boldly faced emptiness and silence in search of the unknown.',
    vote: '6.1',
    backdrop:
        'https://image.tmdb.org/t/p/original///5BwqwxMEjeFtdknRV792Svo0K1v.jpg',
    release: '2019-09-17',
    language: 'EN',
  ),
  Popular(
    title: 'Da 5 Bloods',
    poster: 'https://image.tmdb.org/t/p/w342///yx4cp1ljJMDSFeEex0Zjv45b55E.jpg',
    description:
        'Four African-American Vietnam veterans return to Vietnam. They are in search of the remains of their fallen squad leader and the promise of buried treasure. These heroes battle forces of humanity and nature while confronted by the lasting ravages of the immorality of the Vietnam War.',
    vote: '6.9',
    backdrop:
        'https://image.tmdb.org/t/p/original///Aq5Zhj9iaTF6BEKNk05dlUxeHKa.jpg',
    release: '2020-06-12',
    language: 'EN',
  ),
  Popular(
    title: 'Sonic the Hedgehog',
    poster: 'https://image.tmdb.org/t/p/w342//aQvJ5WPzZgYVDrxLX4R6cLJCEaQ.jpg',
    description:
        'Based on the global blockbuster videogame franchise from Sega, Sonic the Hedgehog tells the story of the world’s speediest hedgehog as he embraces his new home on Earth. In this live-action adventure comedy, Sonic and his new best friend team up to defend the planet from the evil genius Dr. Robotnik and his plans for world domination.',
    vote: '7.5',
    backdrop:
        'https://image.tmdb.org/t/p/original///stmYfCUGd8Iy6kAMBr6AmWqx8Bq.jpg',
    release: '2020-02-12',
    language: 'EN',
  ),
  Popular(
    title: 'Parasite',
    poster: 'https://image.tmdb.org/t/p/w342//7IiTTgloJzvGI1TAYymCfbfl3vT.jpg',
    description:
        'All unemployed, Ki-taeks family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.',
    vote: '8.5',
    backdrop:
        'https://image.tmdb.org/t/p/original///ApiBzeaa95TNYliSbQ8pJv4Fje7.jpg',
    release: '2019-05-30',
    language: 'EN',
  ),
];
