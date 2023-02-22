import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app_ui/home/bloc/home_bloc.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          label: '',
          // icon: Icon(
          //   Icons.home,
          // ),
          icon: IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(
                    IndexChangedEvent(
                      selectedIndex: 0,
                    ),
                  );
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          // icon: Icon(
          //   Icons.message,
          // ),
          icon: IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(
                    IndexChangedEvent(
                      selectedIndex: 1,
                    ),
                  );
            },
            icon: const Icon(
              Icons.message,
            ),
          ),
        ),
      ],
    );
  }
}
