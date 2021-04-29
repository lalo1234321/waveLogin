import 'package:betatindog/widgets/headers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Center(child: Text('Hola mundo')),
            ),
            pinned: false,
            floating: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
                _crearInput(),
              ]
            )
          ) 
        ],
      ),
    );
    // return Scaffold(
    //   body: Stack(
    //     children: <Widget>[
    //       Container(
    //         child: HeaderDiagonal(),
    //       ),
    //       Positioned(
    //         bottom: -400,
    //         child:  Container(
    //           child: ListView(
    //             children: <Widget>[
    //               _crearInput(),
    //               _crearInput(),
    //               _crearInput(),
    //               _crearInput()
    //             ],
    //           ),
    //         )
    //       )
          
    //     ],
    //   )
    // );
  }

  Widget _crearListView() {
    return ListView(
      children: <Widget>[
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),
        _crearInput(),

        
      ],
    );
  }

  Widget _crearInput() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          counter: Text('Letras '), 
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: Icon(
            Icons.accessibility,
            color: Colors.red,
          ),
          icon: Icon(Icons.account_circle),
        ),
    );
  }
}

