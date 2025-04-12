import 'package:flutter/material.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/search/place_services.dart';

class AddressSearch extends SearchDelegate<Suggestion> {
  String sessionToken = "";
  PlaceApiProvider? apiClient;

  AddressSearch(this.sessionToken) {
    apiClient = PlaceApiProvider(sessionToken);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Clear',
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          tooltip: 'Back',
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            close(
                context,
                Suggestion("AIzaSyBgIzaWqzJ65UIKLL7g004bdGDx9GjYfzE",
                    "Amir Temur xiyoboni"));
          },
        )
      ],
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: query == ""
          ? null
          : apiClient?.fetchSuggestions(
              query, Localizations.localeOf(context).languageCode),
      builder: (context, snapshot) => query == ''
          ? Container()
          : snapshot.hasData
              ? ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      (snapshot.data![index]).description,
                    ),
                    onTap: () {
                      close(context, snapshot.data![index]);
                    },
                  ),
                  itemCount: snapshot.data?.length,
                )
              :  Center(
                  child: appLoading1(),
                ),
    );
  }
}
