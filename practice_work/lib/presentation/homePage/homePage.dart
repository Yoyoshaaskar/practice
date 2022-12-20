import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_work/core/ui/appBar.dart';
import 'package:practice_work/core/ui/progressIndicator.dart';
import 'package:practice_work/domain/events/bloc/events_bloc.dart';
import 'package:practice_work/injectable.dart';
import 'package:practice_work/presentation/homePage/widgets/table.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: MainAppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: BlocProvider.value(
          value: getIt.get<EventsBloc>()..add(EventsEvent.fetchEvents()),
          child: BlocBuilder<EventsBloc, EventsState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: (() => CustomProgressIndicator()),
                error: (failure) {
                  return Center(
                    child: Text(failure.toString()),
                  );
                },
                loaded: (eventsResponse) {
                  return ListView.builder(
                      itemCount: eventsResponse.eventsResult!.length,
                      itemBuilder: ((context, index) {
                        return TableWidget(
                          leagueName: eventsResponse.eventsResult![index].league
                              .toString(),
                          date: eventsResponse.eventsResult![index].dateEvent!,
                          status:
                              eventsResponse.eventsResult![index].strStatus!,
                          teamOne:
                              eventsResponse.eventsResult![index].homeTeam!,
                          teamTwo:
                              eventsResponse.eventsResult![index].awayTeam!,
                          scoreTeamOne: eventsResponse
                              .eventsResult![index].homeScore!
                              .toString(),
                          scoreTeamtwo: eventsResponse
                              .eventsResult![index].awayScore!
                              .toString(),
                        );
                      }));
                },
              );
            },
          ),
        ),
      )),
    );
  }
}
