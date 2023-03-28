import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//list
_catChildBuilderDelegate() {
  return SliverChildBuilderDelegate(
    (context, index) => Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 49, 49, 49)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
              child: Image.asset(
                'assets/cat2.jpg',
                fit: BoxFit.contain,
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        "cat",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child: Text(
                      'NT:100',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ])
          ],
        )),
    childCount: 20,
  );
}

_dogChildBuilderDelegate() {
  return SliverChildBuilderDelegate(
    (context, index) => Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 49, 49, 49)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
              child: Image.asset(
                'assets/dog.jpg',
                scale: 10,
                fit: BoxFit.contain,
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        "dog",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child: Text(
                      'NT:200',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ])
          ],
        )),
    childCount: 20,
  );
}

_birdChildBuilderDelegate() {
  return SliverChildBuilderDelegate(
    (context, index) => Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 49, 49, 49)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
              child: Image.asset(
                'assets/bird.jpg',
                scale: 10,
                fit: BoxFit.contain,
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        "bird",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child: Text(
                      'NT:1000',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ])
          ],
        )),
    childCount: 20,
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset(
          'assets/Logo.png',
          fit: BoxFit.cover,
          height: 40,
        ),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(children: [
          Expanded(
              child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 300,
                  width: 400,
                  child: ListView.builder(
                      itemExtent: 400,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/508030340/photo/sunny-cat.jpg?b=1&s=170667a&w=0&k=20&c=x_mXmdfK8XaNheHKbD5kzCu_gqXJzNBiX8UjE2Q6OHw=')))),
                      itemCount: 20),
                ),
              ),
            ],
          )),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                    height: 400,
                    width: 100,
                    child: CustomScrollView(slivers: [
                      const SliverAppBar(
                        backgroundColor: Colors.transparent,
                        centerTitle: true,
                        title: Text("貓",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            )),
                      ),
                      SliverFixedExtentList(
                        delegate: _catChildBuilderDelegate(),
                        itemExtent: 100,
                      ),
                    ]))),
            Expanded(
                flex: 1,
                child: SizedBox(
                    height: 400,
                    width: 100,
                    child: CustomScrollView(slivers: [
                      const SliverAppBar(
                        backgroundColor: Colors.transparent,
                        centerTitle: true,
                        title: Text("鳥",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            )),
                      ),
                      SliverFixedExtentList(
                        delegate: _birdChildBuilderDelegate(),
                        itemExtent: 100,
                      ),
                    ]))),
            Expanded(
                flex: 1,
                child: SizedBox(
                    height: 400,
                    width: 100,
                    child: CustomScrollView(
                      slivers: [
                        const SliverAppBar(
                          backgroundColor: Colors.transparent,
                          centerTitle: true,
                          title: Text("狗",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              )),
                        ),
                        SliverFixedExtentList(
                          delegate: _dogChildBuilderDelegate(),
                          itemExtent: 100,
                        ),
                      ],
                    ))),
          ]),
        ]),
      ),
    );
  }
}
