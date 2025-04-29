import 'package:flutter/material.dart';
import 'dart:math';
import 'bold_black_text.dart';
import 'book.dart';
import 'book_tile.dart';
import 'bmi.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Song> songs = [
    Song(
      title: 'Never Gonna Give You Up',
      singer: 'Rick Astley',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/zh/7/77/Rickrolling_YouTube_RickAstleyVEVO_20150720.png',
    ),
  ];

  final List<Lyric> lyrics = [
    Lyric(lyric: 'We\'re no strangers to love', singer: 'Rick Astley'),
    Lyric(lyric: 'You know the rules and so do I', singer: 'Rick Astley'),
    Lyric(lyric: 'A full commitment\'s what I\'m thinking of', singer: 'Rick Astley'),
    Lyric(lyric: 'You wouldn\'t get this from any other guy', singer: 'Rick Astley'),
    Lyric(lyric: 'I just wanna tell you how I\'m feeling', singer: 'Rick Astley'),
    Lyric(lyric: 'Gotta make you understand', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna give you up', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna let you down', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna run around and desert you', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna make you cry', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna say goodbye', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna tell a lie and hurt you', singer: 'Rick Astley'),
    Lyric(lyric: 'We\'ve known each other for so long', singer: 'Rick Astley'),
    Lyric(lyric: 'Your heart\'s been aching, but you\'re too shy to say it', singer: 'Rick Astley'),
    Lyric(lyric: 'Inside, we both know what\'s been going on', singer: 'Rick Astley'),
    Lyric(lyric: 'We know the game and we\'re gonna play it', singer: 'Rick Astley'),
    Lyric(lyric: 'And if you ask me how I\'m feeling', singer: 'Rick Astley'),
    Lyric(lyric: 'Don\'t tell me you\'re too blind to see', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna give you up', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna let you down', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna run around and desert you', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna make you cry', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna say goodbye', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna tell a lie and hurt you', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna give, never gonna give', singer: 'Rick Astley'),
    Lyric(lyric: 'Give you up', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna give, never gonna give', singer: 'Rick Astley'),
    Lyric(lyric: 'Give you up', singer: 'Rick Astley'),
    Lyric(lyric: 'We\'ve known each other for so long', singer: 'Rick Astley'),
    Lyric(lyric: 'Your heart\'s been aching, but you\'re too shy to say it', singer: 'Rick Astley'),
    Lyric(lyric: 'Inside, we both know what\'s been going on', singer: 'Rick Astley'),
    Lyric(lyric: 'We know the game and we\'re gonna play it', singer: 'Rick Astley'),
    Lyric(lyric: 'I just wanna tell you how I\'m feeling', singer: 'Rick Astley'),
    Lyric(lyric: 'Gotta make you understand', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna give you up', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna let you down', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna run around and desert you', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna make you cry', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna say goodbye', singer: 'Rick Astley'),
    Lyric(lyric: 'Never gonna tell a lie and hurt you', singer: 'Rick Astley'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text("NTU Flutter Class"),
        centerTitle: true,
        backgroundColor: Colors.green.shade100,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/65105273?size=256',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('周恭煥'),
                      SizedBox(height: 10),
                      Text(
                        'kenchou2006',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldBlackText('I am a Flutter Developer'),
                SizedBox(height: 20),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/zh/7/77/Rickrolling_YouTube_RickAstleyVEVO_20150720.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            ListView.builder(
              padding: const EdgeInsets.all(5),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: lyrics.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print('Lyric: ${lyrics[index].lyric}, Singer: ${lyrics[index].singer}');
                  },
                  child: Row(
                    children: [
                      Text(
                        lyrics[index].lyric,
                        style: TextStyle(fontSize: 13.5),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Song {
  final String title;
  final String singer;
  final String imageUrl;
  Song({required this.title, required this.singer, required this.imageUrl});
}

class Lyric {
  final String lyric;
  final String singer;
  Lyric({required this.lyric, required this.singer});
}

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final List<Book> books = const [
    Book(name: '彼得潘', author: 'J.M.巴里'),
    Book(name: '小王子', author: '安托萬·德·聖-埃克蘇佩里'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [for (final book in books) BookTile(book: book)],
      ),
    );
  }
}

class dicePage extends StatefulWidget {
  const dicePage({super.key});

  @override
  State<dicePage> createState() => _dicePageState();
}

class _dicePageState extends State<dicePage> {
  final _diceEmojis = ['⚀', '⚁', '⚂', '⚃', '⚄', '⚅'];
  var _diceIndex = 0;
  var _diceIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _diceEmojis[_diceIndex],
              style: TextStyle(
                fontSize: 200,
                color:
                _diceIndex == 0 || _diceIndex == 3
                    ? Colors.red
                    : Colors.black,
              ),
            ),
            Text(
              _diceEmojis[_diceIndex2],
              style: TextStyle(
                fontSize: 200,
                color:
                _diceIndex2 == 0 || _diceIndex2 == 3
                    ? Colors.red
                    : Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _diceIndex = Random().nextInt(6);
                  _diceIndex2 = Random().nextInt(6);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.green,
              ),
              child: Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
