import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';
import 'package:flutter_moda_app/detay1.dart';

void main()=>runApp(const ModaApp());
class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}
class AnaSayfa extends StatefulWidget  {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin{
 late TabController tabController;
 @override
  void initState() {
    super.initState();
    tabController=TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color:Colors.white ,
        child: TabBar(controller: tabController,
          tabs: const [
            Tab(icon: Icon(Icons.more,color: Colors.black,size: 22,),),
            Tab(icon: Icon(Icons.play_arrow,color: Colors.black,size: 22,),),
            Tab(icon: Icon(Icons.navigation,color: Colors.black,size: 22,),),
            Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.black,size: 22,),),

          ]),
        ),
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "Moda Uygulaması",
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.grey,)),
          ],
      ),

      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          // Üst taraftaki profillistesi
          SizedBox(
            //color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,// burada scrool soldan sağa doğru tanımladık
              children: [
                listeElemani('assets/model5.jpg','assets/chanellogo.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model4.jpg','assets/chloelogo.png'),
                const SizedBox(width: 30,),
                listeElemani('assets/model6.jpg','assets/louisvuitton.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model1.jpg','assets/chanellogo.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model3.jpg','assets/chanellogo.jpg'),
                const SizedBox(width: 30,),
                listeElemani('assets/model2.jpg','assets/louisvuitton.jpg'),
              ],
             ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
               //color: Colors.pink,
               child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(image: AssetImage('assets/model5.jpg'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width-160,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sydney Sweeney',style: TextStyle(fontFamily: 'Montserrat',color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('34 mins ago',style: TextStyle(fontFamily: 'Montserrat',color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),)
                            ]),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.more_vert,color: Colors.grey,size: 22,),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const Text('Sydney Bernice Sweeney was born on September 12, 1997, in Spokane, Washington, to Lisa (née Mudd) and Steven Sweeney. Her mother is a former criminal defense lawyer, and her father is a hospitality professional.She has one brother',style: TextStyle(fontFamily: 'Montserrat',fontSize: 13,color: Colors.grey),),
                    const SizedBox(height: 15,),
                    Row(
                         children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Detay(imgPath:'assets/grid1.jpg')));
                            },
                            child: Hero(
                              tag: 'assets/grid1.jpg',
                              child: Container(
                                height: 200,
                                width: (MediaQuery.of(context).size.width-50)/2,
                                decoration: BoxDecoration( 
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(image: AssetImage('assets/grid1.jpg'),fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Detay(imgPath:'assets/sw1.jpg')));
                            },
                                child: Hero(
                                  tag: 'assets/sw1.jpg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width-100)/2,
                                    decoration: BoxDecoration( 
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(image: AssetImage('assets/sw1.jpg'),fit: BoxFit.cover),
                                                            ),
                                                          ),
                                ),
                              ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Detay1(imgPath1:'assets/sw2.jpg')));
                            },
                            child: Hero(
                              tag: 'assets/sw2.jpg',
                              child: Container(
                                height: 95,
                                width: (MediaQuery.of(context).size.width-100)/2,
                                decoration: BoxDecoration( 
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(image: AssetImage('assets/sw2.jpg'),fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                            ],),
                            const SizedBox(height: 10,),
                           
                         ],
                    ),
                    const SizedBox(height: 10,),
                     Row(
                      children:[
                                Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.pink.withOpacity(0.2),
                                    ),
                                    child: const Center(child: Text('#Lois Vuiton',style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,color: Colors.pink),)),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  height: 25,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.pink.withOpacity(0.2),
                                    ),
                                    child: const Center(child: Text('#Lois Vuiton',style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,color: Colors.pink),)),
                                ),
                              ],
                          ),
                    const SizedBox(height: 20,),
                    const Divider(),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.reply,color: Colors.transparent.withOpacity(0.4),),
                        const SizedBox(height: 5,),
                        const Text('1.7K',style: TextStyle(fontFamily: 'Montserrat'),),
                        const SizedBox(width: 40,),
                        Icon(Icons.chat_bubble,color: Colors.transparent.withOpacity(0.4),),
                        const SizedBox(width: 5,),
                        const Text('1.7K',style: TextStyle(fontFamily: 'Montserrat')),
                        
                        SizedBox(
                          width: MediaQuery.of(context).size.width-235,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite,color: Colors.red,),
                         SizedBox(width: 5,),
                        Text('2.3K',style: TextStyle(fontFamily: 'Montserrat')),
                            ],
                          ),
                        )

                        
                        
                      ],
                    )
                  ],
                ),
               ),
            ),
          ),
          
          
          

        ],
       ) ,
    );
  }
  
  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
              ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
               width: 25,
               height: 25,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
               image: DecorationImage(image: AssetImage(logoPath),fit: BoxFit.contain)
               ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10,),
      Container(
        height: 30,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink,
          ),
          child: const Center(child: Text('Follow',style: TextStyle(fontFamily: 'Montserrat',fontSize: 14,color: Colors.white),)),
      ),
      
      
    ],
    );
  }
}
