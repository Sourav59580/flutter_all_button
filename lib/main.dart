import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Flutter layout",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Navbar"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // ===========   ButtonBar   ===========
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text("click",style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                  onPressed: (){},
                ),
               RaisedButton(
                 child: Text("Submit",style: TextStyle(color: Colors.white),),
                 color: Colors.black,
                 onPressed: (){},
               ),
                Text("Read More",style: TextStyle(color: Colors.purple),),
              ],
            ),

            // ========== FlatButton ============
            Container(
              margin: EdgeInsets.all(10),
              child: FlatButton(
                child: Text("Button"),
                onPressed: (){},
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.yellow,
              ),
            ),
            //============ OutLine Button ===========
            Container(
              child: OutlineButton(
                child: Text("Button"),
                onPressed: (){},
                textColor: Colors.purple,
                borderSide: BorderSide(
                  color: Colors.black
                ),
              ),
            ),
            // ========= Icon Button ============
            Container(
              child: IconButton(
                icon: Icon(Icons.favorite,color: Colors.pink,),
                onPressed: (){},
              ),
            ),
            // ============ Pop Up button ============
            Container(
              child: Popupbutton(),
            ),
            // ========= Dropdown Button ===========
            
            // =============  IconButton =============
            Container(
              child: Expanded(
                child: IconButton(
                  icon: Icon(Icons.volume_up),
                  color: Colors.red,
                  onPressed: (){},
                ),
              ),
            ),
            






          ],
        )

      ),

      // ========== FloatingActionButton  ============
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.red,
        splashColor: Colors.yellow,

    ),


    ),
  ));
}

class Popupbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text(
              "English",
              style:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.w700),
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Text(
              "Chinese",
              style:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.w700),
            ),
          ),
        ],
        elevation: 4,
        padding: EdgeInsets.symmetric(horizontal: 50),
      )
    );
  }
}
