import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto/page/foryou.dart';
import 'package:resto/provider/shopProv.dart';
import 'package:resto/style/gayateks.dart';
import 'package:resto/style/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ShopProv()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: 6,
            child: SafeArea(
              child: NestedScrollView(
                  physics: BouncingScrollPhysics(),
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    // These are the slivers that show up in the "outer" scroll view.
                    return <Widget>[
                      SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        child: SliverSafeArea(
                          top: false,
                          sliver: SliverAppBar(
                            elevation: 0,
                            automaticallyImplyLeading: false,
                            flexibleSpace: FlexibleSpaceBar(
                              background: Column(
                                children: <Widget>[
                                 
                                 Stack(
                                   children: <Widget>[
                                     Container(
                                       height: 200,
                                       decoration: BoxDecoration(
                                         image: DecorationImage(
                                           fit: BoxFit.cover,
                                           image: NetworkImage(
                                           'https://images.unsplash.com/photo-1542528180-a1208c5169a5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFsYWZlbHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60'
                                         ))
                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: InkWell(
                                         onTap: (){},
                                         child: Container(
                                           margin: EdgeInsets.only(top: 14),
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(99),
                                             color: Colors.white
                                           ),
                                           padding: EdgeInsets.all(12),
                                           child: Icon(Icons.arrow_back,
                                           color: secondaryColor,
                                           size: 18,
                                           )
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                                  // _buildIklan(),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            expandedHeight: 410,
                            // 420
                            backgroundColor: Colors.white,
                            title: SizedBox(),
                            floating: true,
                            pinned: true,
                            snap: false,
                            primary: true,
                            forceElevated: innerBoxIsScrolled,
                            bottom: PreferredSize(
                              preferredSize: Size.fromHeight(210),
                              child: Container(
                                color: Colors.white,
                                height: 210,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14
                                      ),
                                      child: Text('TK`s Deli',
                                      style: tittleBesar,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Text('40-50 min',
                                          style: subtittle,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text('4.8',
                                           style: subtittle,
                                           ),
                                          Icon(Icons.star,
                                          color: Colors.amber,
                                          size: 14,
                                          ),
                                          Text('(500+)',
                                           style: subtittle2,
                                          ),
                                         
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                       child: Container(
                                              width: MediaQuery.of(context).size.width,

                                              height: 40,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey
                                                ),
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                            ),
                                     ),
                                    Expanded(child: SizedBox()),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: TabBar(
                                        indicator: UnderlineTabIndicator(
                                          borderSide: BorderSide(
                                              width: 2.0, color: primaryColor),
                                        ),
                                        labelColor: Colors.grey[700],
                                        labelStyle: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          // color: Colors.grey[800],
                                        ),
                                        unselectedLabelStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          // color: Colors.grey
                                        ),
                                        isScrollable: true,
                                        unselectedLabelColor: Colors.grey,
                                        indicatorColor: primaryColor,
                                        indicatorSize:
                                            TabBarIndicatorSize.label,
                                        tabs: [
                                          Container(
                                            color: Colors.white,
                                            child: Tab(
                                              child: Text(
                                                'For U',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Tab(
                                              child: Text(
                                                'Rekomendasi makanan',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Tab(
                                              child: Text(
                                                'Makanan',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Tab(
                                              child: Text(
                                                'Minuman',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Tab(
                                              child: Text(
                                                'Electronic',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Tab(
                                              child: Text(
                                                'Kitchen',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                      // These are the contents of the tab views, below the tabs.
                      children: <Widget>[
                        SafeArea(
                          top: false,
                          bottom: false,
                          child: SingleChildScrollView(
                            child: ForyouScreen(),
                          ),
                        ),
                        SafeArea(
                          top: false,
                          bottom: false,
                          child: SingleChildScrollView(
                            child: ForyouScreen(),
                          ),
                        ),
                        SafeArea(
                          top: false,
                          bottom: false,
                          child: SingleChildScrollView(
                            child: ForyouScreen(),
                          ),
                        ),
                        SafeArea(
                          top: false,
                          bottom: false,
                          child: SingleChildScrollView(
                            child: ForyouScreen(),
                          ),
                        ),
                        SafeArea(
                          top: false,
                          bottom: false,
                          child: SingleChildScrollView(
                            child: ForyouScreen(),
                          ),
                        ),
                        SafeArea(
                          top: false,
                          bottom: false,
                          child: SingleChildScrollView(
                            child: ForyouScreen(),
                          ),
                        ),
                      ])),
            ),
          ),
        ));
  }
}
