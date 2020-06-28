import 'package:flutter/material.dart';
import 'package:movie_catalogue/model/now_playing.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/detail/detail_nowPlaying_page.dart';

class ListNowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: nowPlaying.map((data) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailNowPlaying(nowplaying: data)));
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

var nowPlaying = [
  NowPlaying(
    title: 'The Hunt',
    poster: 'https://image.tmdb.org/t/p/w342///wxPhn4ef1EAo5njxwBkAEVrlJJG.jpg',
    description:
        'Twelve strangers wake up in a clearing. They dont know where they are—or how they got there. In the shadow of a dark internet conspiracy theory, ruthless elitists gather at a remote location to hunt humans for sport. But their master plan is about to be derailed when one of the hunted turns the tables on her pursuers.',
    vote: '6.7',
    backdrop:
        'https://image.tmdb.org/t/p/original///naXUDz0VGK7aaPlEpsuYW8kNVsr.jpg',
    release: '2020-03-11',
    language: 'EN',
  ),
  NowPlaying(
    title: 'Onward',
    poster: 'https://image.tmdb.org/t/p/w342///f4aul3FyD3jv3v4bul1IrkWZvzq.jpg',
    description:
        'In a suburban fantasy world, two teenage elf brothers embark on an extraordinary quest to discover if there is still a little magic left out there.',
    vote: '7.9',
    backdrop:
        'https://image.tmdb.org/t/p/original///xFxk4vnirOtUxpOEWgA1MCRfy6J.jpg',
    release: '2020-02-29',
    language: 'EN',
  ),
  NowPlaying(
    title: 'Bloodshot',
    poster: 'https://image.tmdb.org/t/p/w342///8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg',
    description:
        'After he and his wife are murdered, marine Ray Garrison is resurrected by a team of scientists. Enhanced with nanotechnology, he becomes a superhuman, biotech killing machine—'
        'Bloodshot'
        '. As Ray first trains with fellow super-soldiers, he cannot recall anything from his former life. But when his memories flood back and he remembers the man that killed both him and his wife, he breaks out of the facility to get revenge, only to discover that theres more to the conspiracy than he thought.',
    vote: '7',
    backdrop:
        'https://image.tmdb.org/t/p/original///ocUrMYbdjknu2TwzMHKT9PBBQRw.jpg',
    release: '2020-03-05',
    language: 'EN',
  ),
  NowPlaying(
    title: 'The Gentlemen',
    poster: 'https://image.tmdb.org/t/p/w342//jtrhTYB7xSrJxR1vusu99nvnZ1g.jpg',
    description:
        'American expat Mickey Pearson has built a highly profitable marijuana empire in London. When word gets out that he’s looking to cash out of the business forever it triggers plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.',
    vote: '7.7',
    backdrop:
        'https://image.tmdb.org/t/p/original///tintsaQ0WLzZsTMkTiqtMB3rfc8.jpg',
    release: '2020-01-01',
    language: 'EN',
  ),
  NowPlaying(
    title: 'Underwater',
    poster: 'https://image.tmdb.org/t/p/w342//gzlbb3yeVISpQ3REd3Ga1scWGTU.jpg',
    description:
        'After an earthquake destroys their underwater station, six researchers must navigate two miles along the dangerous, unknown depths of the ocean floor to make it to safety in a race against time.',
    vote: '6.4',
    backdrop:
        'https://image.tmdb.org/t/p/original///ww7eC3BqSbFsyE5H5qMde8WkxJ2.jpg',
    release: '2020-01-08',
    language: 'EN',
  ),
];
