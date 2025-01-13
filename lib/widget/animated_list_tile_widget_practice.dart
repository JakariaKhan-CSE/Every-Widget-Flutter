import 'package:flutter/material.dart';

class AnimatedListTileWidgetPractice extends StatefulWidget {
  const AnimatedListTileWidgetPractice({super.key});

  @override
  State<AnimatedListTileWidgetPractice> createState() => _AnimatedListTileWidgetPracticeState();
}

class _AnimatedListTileWidgetPracticeState extends State<AnimatedListTileWidgetPractice> {
  // empty list
  final _items = [];
  // create key
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  // item create function
  void _addItem(){
    // 0 index a String(Items 1 add)
_items.insert(0, "Item ${_items.length+1}");
_key.currentState?.insertItem(0, duration: Duration(seconds: 1));
  }

  // item delete function
  void _removeItem(int index){
    _key.currentState?.removeItem(index, (context, animation) {
return SizeTransition(
    sizeFactor: animation,
  // delete icon a click korle aivabe animate hoye delete hobe
  child: Card(
    margin: EdgeInsets.all(10),
    color: Colors.red,
    child: ListTile(
      title: Text('Deleted',style: TextStyle(
fontSize: 24
      ),),
    ),
  ),
);
    },
    duration: Duration(milliseconds: 300)
    );

    // remove item from list
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(

  children: [
    SizedBox(height: 10,),
    IconButton(onPressed: _addItem,
        icon: Icon(Icons.add)),

    // baki height sob nibe (add icon bade)
    Expanded(child: AnimatedList(
      key: _key,
      initialItemCount: 0  ,
      padding: EdgeInsets.all(10),

      itemBuilder: (context, index, animation) {
// this transition boro hote thakbe final form a na jawa porjonto
      // mane user icon add korte thakle aitar height niser dike boro hote thakbe
      return SizeTransition(
          key: UniqueKey(),

          sizeFactor: animation,

      // add icon a click korle ai card create hobe
      child: Card(
margin: EdgeInsets.all(10),
        color: Colors.orangeAccent,
        child: ListTile(
          title: Text(_items[index],style: TextStyle(
            fontSize: 24
          ),),
          trailing: IconButton(onPressed: (){
            _removeItem(index);
          }, icon: Icon(Icons.delete)),
        ),
      ),
      );
    },))
  ],
),
    );
  }
}
