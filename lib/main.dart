
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

int count = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // increment() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   count++;
  //   setState(() {});
  //   pref.setInt("CountValue", count);
  // }
  //
  // decrement() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   count--;
  //   setState(() {});
  //   pref.setInt("CounterValue", count);
  // }
  //
  // @override
  // void initState() {
  //   action();
  //   super.initState();
  // }
  //
  // action () async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   int? countValue = pref.getInt("CountValue");
  //   count = countValue!;
  //   setState(() {});
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff419711),
        title: const Text("Counter App",style: TextStyle(color: Colors.white,fontSize: 25),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex: 85,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: CircularPercentIndicator(
                    radius: 100,
                    lineWidth: 16,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.green.shade100,
                    progressColor: const Color(0xff419711),
                    percent: (count/100),
                    center: Center(
                      child: Text(count.toString(),
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),

                  ),
                )),
            const SizedBox(height: 10,),
            Expanded(
                flex: 15,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                          onTap: (){
                            count--;
                            setState(() {});
                          },
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
                            ),
                            child: const Icon(Icons.exposure_minus_1,size: 40,),
                          ),
                        )),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: InkWell(
                          onTap: (){
                            count++;
                            setState(() {});
                          },
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),
                            ),
                            child: const Icon(Icons.plus_one,size: 40,),
                          ),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

