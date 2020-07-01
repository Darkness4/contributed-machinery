import 'package:contributed_machinery/application/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  final FocusNode focusNode;
  const SearchAppBar({
    Key key,
    @required this.controller,
    @required this.focusNode,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.text,
        style: Theme.of(context).textTheme.headline6.apply(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              focusNode.unfocus();
            },
          ),
        ),
        onChanged: (value) =>
            context.bloc<SearchBloc>().add(SearchEvent.filterChanged(value)),
      ),
    );
  }
}
