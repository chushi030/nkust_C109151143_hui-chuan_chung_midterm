import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  void dispose() {
    player.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     player.play(AssetSource("Someday.mp3"));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('期中作業-自傳'),backgroundColor:Color(0xFFE1C757),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFE1C757),
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          selectedLabelStyle: TextStyle(fontFamily: 'otakupencil',),
          unselectedItemColor: Color(0xFF806124),
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.mood),
              label: '關於我',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.insights),
              label: '學習歷程',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.grade),
              label: '未來規劃',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_flags),
              label: '專案方向',
            ),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            if (index!=0) {
            //  player.stop();
            }
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我叫做鐘慧娟，來自四面環海的澎湖灣，現在就讀於高雄科技大學的資訊工程系。\n'
      '家中有7個人，包含父母、祖父母、兄姊以及我本人。我的⽗親是位實在的討海⼈，⺟親是新住⺠，'
      '流淌著⽂化結合下來的⾎脈，我⾃幼就受東南亞⽂化的薰陶，'
      '加上曾經跟著⺟親或隨學校屢次⾛訪過越南，'
      '這些經驗使我擁有了寬闊的視野與⼼胸，'
      '樂於去探知與台灣不同的⽂化，並以⾃⼰是個新住⺠⼦⼥為榮。\n'
      '我的家境並不是很富裕，我的童年常與紙筆相伴，在紙上揮灑自己的創造力，劃出天馬行空的塗鴉。'
      '雖沒有接受過正式的美術訓練，但經年累月的自我學習下，我已練就能讓自己引以為傲的繪圖能力。'
      '無論是手繪還是藉繪圖軟體畫圖我都能得心應手，我把它當作自己的興趣專長，'
      '而這份能力在高中時有幸能受到良師的青睞。當時的老師給予我機會去繪畫校內的校刊封面，'
      '成果都廣受好評，在畢業那年被賦予了執筆當屆畢業紀念冊的封面，'
      '對我來說那是師長對於我的能力最大的肯定。\n'
      '我樂於學習新知，有自行參加過越南語教學的經驗，了解來自母親家鄉的語言。'
      '科辦或校內外研習也都相當踴躍，曾代表學校參加過全國性比賽。'
      '也很感謝當時的高中師長給予我這些機會，讓我知道自己的能力相對於台灣本島的學生還是有一定的差距，'
      '這並沒有讓我氣餒，我也想要追上那些在我前面的人的腳步，這也是我選擇離開澎湖舒適圈，來到台灣的原因。\n'
      '當在擅長的領域時，我總是很專注，當鑽研的⽅向有所成果時就特別有成就感。'
      '期待在未來能保持這樣的熱忱，在課業上有更好的表現！'
  ;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的自傳",
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.w500,
                  color: Color(0xFFC58E23),
                  fontFamily: 'otakupencil',)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Color(0xFFD7D689),
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle( fontSize: 20,
                letterSpacing: 2.0,
                height:1.5,
                color: Color(0xFF434B12),
                fontFamily: 'otakupencil',),),
          ),

          //放一張照片
          Container(
            color: Color(0xFF9E8A3E),
            child: Image.asset('images/p1.png'),
            height: 210,
            width: 300,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 220,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFC09A0B),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p2.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 160,
                height: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFCEA51E),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/p3.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),     //設定背景圖片
              fit: BoxFit.cover),
        ),
        child: Column(
          children:<Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("學習歷程",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:30,
                    fontWeight:FontWeight.w500,
                    color: Color(0xFFC58E23),
                    fontFamily: 'otakupencil',)
              ),
            ),
            Container(child:Text('技術士證照',
              style: TextStyle(fontFamily: 'otakupencil',
                fontSize:20,),
            ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF627888),
              child: Image.asset('images/license01.png'),
              height: 200,
              width: 300,),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF627888),
              child: Image.asset('images/license02.png'),
              height: 200,
              width: 300,),
            SizedBox(height: 10,),
            Container(child:Text('MOS認證',
              style: TextStyle(fontFamily: 'otakupencil',
                fontSize:20,),),),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF627888),
              child: Image.asset('images/Certification01.png'),
              height: 200,
              width: 300,),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF627888),
              child: Image.asset('images/Certification02.png'),
              height: 200,
              width: 300,),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF627888),
              child: Image.asset('images/Certification03.png'),
              height: 200,
              width: 300,),
          ],
        ),
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1200,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),     //設定背景圖片
              fit: BoxFit.cover),
        ),
        child: Column(
          children:<Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("未來規劃",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize:30,
                    fontWeight:FontWeight.w500,
                    color: Color(0xFFC58E23),
                    fontFamily: 'otakupencil',),
              ),
            ),
            Container(child:Text("大一時期",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize:20,
                  fontWeight:FontWeight.w500,
                  color: Color(0xFF627888),
                  fontFamily: 'otakupencil',),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 35),
              decoration: BoxDecoration(
                border: Border.all(color:Color(0xFF3A5A7C), width: 2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Color(0xFFCCCDDE),
                    offset: Offset(5, 5)),
                ],),
              child:Text('✦積極參加學校提供的各項活動(演講、微學分、研習等等)\n'
                         '✦以保持學期成績為基本，朝自己能力所及前進\n'
                         '✦承接校內工讀，了解學校行政系統外也練習文書技巧',
                         style: TextStyle(fontFamily: 'otakupencil',
                                          height:1.5,
                                          fontSize:18,),
            ),
            ),
            Container(child:Text("大二時期",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize:20,
                fontWeight:FontWeight.w500,
                color: Color(0xFF627888),
                fontFamily: 'otakupencil',),
            ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 35),
              decoration: BoxDecoration(
                border: Border.all(color:Color(0xFF3A5A7C), width: 2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Color(0xFFCCCDDE),
                    offset: Offset(5, 5)),
                ],),
              child:Text('✦參加系學會，為系上同學服務\n'
                          '✦應系學會活動需求，自學AI、PS繪圖等美編技能\n'
                          '✦對文創產業有興趣，第一次嘗試跨校區修他系的專業課程\n'
                          '✦課業方面學習了JAVA、PYTHON、C++等語言',
                style: TextStyle(fontFamily: 'otakupencil',
                  height:1.5,
                  fontSize:18,),
              ),
            ),
            Container(child:Text("大三時期(目前)",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize:20,
                fontWeight:FontWeight.w500,
                color: Color(0xFF627888),
                fontFamily: 'otakupencil',),
            ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 35),
              decoration: BoxDecoration(
                border: Border.all(color:Color(0xFF3A5A7C), width: 2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Color(0xFFCCCDDE),
                    offset: Offset(5, 5)),
                ],),
              child:Text('✦報名日語專班，嘗試學習第二外語\n'
                  '✦參與專題製作，每周持續做出進度\n'
                  '✦修讀業內人士老師開設的專業課程，了解業內需求，以及評估自己的能力可以從事甚麼',
                style: TextStyle(fontFamily: 'otakupencil',
                  height:1.5,
                  fontSize:18,),
              ),
            ),
            Container(child:Text("大四規劃",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize:20,
                fontWeight:FontWeight.w500,
                color: Color(0xFF802452),
                fontFamily: 'otakupencil',),
            ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 35),
              decoration: BoxDecoration(
                border: Border.all(color:Color(0xFF3A5A7C), width: 2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Color(0xFFCCCDDE),
                    offset: Offset(5, 5)),
                ],),
              child:Text('✦專心致力於畢業專題\n'
                  '✦有機會的話對自己有興趣的的產業做出實際行動(實習、就業博覽會等等..)\n'
                  '✦盡快修讀完畢業學分，如果有餘力向輔系前進',
                style: TextStyle(fontFamily: 'otakupencil',
                  height:1.5,
                  fontSize:18,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 700,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),     //設定背景圖片
              fit: BoxFit.cover),
        ),
        child: Column(
          children:<Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("專案方向",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:30,
                  fontWeight:FontWeight.w500,
                  color: Color(0xFFC58E23),
                  fontFamily: 'otakupencil',),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 35),
              decoration: BoxDecoration(
                border: Border.all(color:Color(0xFF7C693A), width: 2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Color(0xFFE3D9AF),
                    offset: Offset(5, 5)),
                ],),
              child:Text('目前還沒別想到甚麼，但以實用為目標。可能會做簡單記帳APP(結合資料庫)'
                  '解決生活瑣事的小功能，因為目前APP商店能下載的免費工具軟體，往往都會附帶廣告很惱人。'
                  '以及盡量運用到上課時學所學到的技巧。\n\n'
                  '畢業專題的目前是加入上一屆學長的專題--遊戲研發中擔任美術的部分。'
                  '但我自覺這樣可能會使自己的程式設計能力變得生疏遲鈍，因為CODE的部分在團隊中交給更擅長的學長了'
                  '所以有在計畫大四學長們畢業後，可以靠自己或跟同學合作做一個新專題，做個更加屬於自己的專題。',
                style: TextStyle(fontFamily: 'otakupencil',
                  height:1.5,
                  fontSize:20,
                color:Color(0xFF4F3B11) ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
