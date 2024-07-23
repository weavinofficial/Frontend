import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final searchHistory = [
    "Apple",
    "Banana",
    "Bump",
    "Break",
    "CS1010",
    "How",
    "Datacamp",
    "Elevator",
    "Fill",
    "God",
    "HIII",
    "IceWater"
  ];

  // @override
  // String get searchFieldLabel => Text("fefe");
  // 'Enter your search term'; // Custom hint text

  @override
  TextStyle get searchFieldStyle => const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontFamily: 'GmarketSans',
        fontWeight: FontWeight.w500,
      );

  @override
  InputDecorationTheme get searchFieldDecorationTheme =>
      const InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          fontFamily: 'GmarketSans',
          fontWeight: FontWeight.w500,
        ),
      );

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in searchHistory) {
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(result: result),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in searchHistory) {
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            query = result;
            showResults(context);
          },
        );
      },
    );
  }
}

class ResultPage extends StatelessWidget {
  final String result;

  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Page'),
      ),
      body: Center(
        child: Text('You selected: $result'),
      ),
    );
  }
}
