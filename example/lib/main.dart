import 'package:flutter/material.dart';
import 'package:mockify/mockify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SelectionArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Gen name: ${Mockify.name(locale: const Locale('vi'))}',
                  ),
                  Text(
                    'Gen email: ${Mockify.email()}',
                  ),
                  Text(
                    'Gen date: ${Mockify.date(minYear: 2000, maxYear: 2022)}',
                  ),
                  Text(
                    'Gen color: ',
                    style: TextStyle(color: Mockify.color()),
                  ),
                  Text(
                    'Gen phone: ${Mockify.phone('+84')}',
                  ),
                  Text(
                    'Gen address: ${Mockify.address()}',
                  ),
                  Text(
                    'Gen avatar:  ${Mockify.avatar()}',
                  ),
                  Image.network(
                    Mockify.avatar(),
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    'Gen company:${Mockify.companyName()}',
                  ),
                  Text(
                    'Gen jobtitle:  ${Mockify.jobTitle()}',
                  ),
                  Text(
                    'Gen department :  ${Mockify.department()}',
                  ),
                  Text(
                    'Gen bio:  ${Mockify.bio()}',
                  ),
                  Text(
                    'Gen credit card:  ${Mockify.creditCardNumber()}',
                  ),
                  Text(
                    'Gen currency:  ${Mockify.currency()}',
                  ),
                  Text(
                    'Gen ip:  ${Mockify.ipAddress()}',
                  ),
                  Text(
                    'Gen mac:  ${Mockify.macAddress()}',
                  ),
                  Text(
                    'Gen time:  ${Mockify.time24Hour()}',
                  ),
                  Text(
                    'Gen grade:  ${Mockify.grade()}',
                  ),
                  Text(
                    'Gen file:  ${Mockify.fileName()}',
                  ),
                  Text(
                    'Gen emoji:  ${Mockify.emoji()}',
                  ),
                  Text(
                    'Gen paragraph:  ${Mockify.paragraph()}',
                  ),
                  Text(
                    'Gen uuid:  ${Mockify.uuid()}',
                  ),
                  Text(
                    'Gen long:  ${Mockify.longitude()}',
                  ),
                  Text(
                    'Gen lat:  ${Mockify.latitude()}',
                  ),
                  Text(
                    'Gen location:  ${Mockify.location()}',
                  ),
                  Text(
                    'Gen avatar:  ${Mockify.imageUrl()}',
                  ),
                  Image.network(
                    Mockify.imageUrl(),
                    width: 300,
                    height: 200,
                  ),
                  Text(
                    'Gen value:  ${Mockify.value([
                          'value 1',
                          'value 2',
                          'value 3'
                        ])}',
                  ),
                  Text(
                    'Gen value:  ${Mockify.generateJwt()}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
