import 'package:firebase_auth/firebase_auth.dart';
import '../../common_libs.dart';
import '../../services/auth_services.dart';

import 'cubit/dashboard_cubit.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: Scaffold(
        body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return Stack(
              children: [
                Image.asset(
                  "images/bg_cricket.jpeg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fill,
                ),
                BlocBuilder<DashboardCubit, DashboardState>(
                  builder: (context, state) {
                    if(state is DashboardLoading){
                      return Center(child: CircularProgressIndicator());
                    }
                    else if(state is DashboardLoaded){
                      return ListView.builder(
                          itemCount: state.dashboardResponse.data?.length,

                          itemBuilder: (context,index){
                            print("Response1111====>>> ${state.dashboardResponse.data?.length}");
                            print(" 8888888666 ${state.dashboardResponse.data?[index].teamAImg}");
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                  color: CLR.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 0, right: 10),
                                        child: Image.asset(
                                          "images/cricket.png",
                                          width: 16,
                                          height: 16,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 10),
                                        child: Text(
                                          "ICC Womens T20 World Cup 2023",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: CLR.lightGreyColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                    color: CLR.lightestGreyColor,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      state.dashboardResponse.data?[index].teamA??
                                          "2nd Semi final",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: CLR.blueColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 35,
                                          height: 35,
                                          padding: EdgeInsets.all(2),
                                          margin: EdgeInsets.only(left: 5,top: 5),
                                          decoration: BoxDecoration(
                                              color: CLR.lightGreyColor,
                                              shape: BoxShape.circle),
                                          child: ClipOval(
                                            child: Image.network(state.dashboardResponse.data?[index].teamAImg??
                                                " ",
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                    } else{
                      return Center(child: Text("No data Found"));
                    }

                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
