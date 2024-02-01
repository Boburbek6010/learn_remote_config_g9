import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String discount = "";
  bool isBannerShow = true;


  final remoteConfig = FirebaseRemoteConfig.instance;

  final Map<String, Color> colors = {
    "red":Colors.red,
    "yellow":Colors.yellow,
    "green":Colors.green,
    "blue":Colors.blue,
    "pink":Colors.pink,
  };

  String backgroundColor = "blue";

  Future<void> initConfig()async{
    remoteConfig.setDefaults(
        {"background_color":backgroundColor});
    await fetchConfig();
    remoteConfig.onConfigUpdated.listen(
            (event) async{
      await fetchConfig();
      setState(() {});
    });
  }

  Future<void> fetchConfig()async{
    await remoteConfig.fetchAndActivate()
        .then((value) {
      backgroundColor = remoteConfig
          .getString("background_color");
    });
  }


  @override
  void initState() {
    initConfig();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isBannerShow ?Scaffold(
      backgroundColor: colors[backgroundColor],
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (_, index) {
          return const Card(
            child: ListTile(
              title: Text(
                "Product",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text("180\$"),
              trailing: Icon(Icons.propane_tank),
            ),
          );
        },
        separatorBuilder: (_, index) {
          if (index % 6 == 0) {
            return isBannerShow
                ? Card(
                    color: Colors.red,
                    child: ListTile(
                      title: const Text(
                        "Advertisement",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        " $discount % off",
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                : const SizedBox.shrink();
          }
          return const SizedBox.shrink();
        },
      ),
    ):Scaffold(
      body: Center(
        child: Text("*******"),
      ),
    );
  }
}
