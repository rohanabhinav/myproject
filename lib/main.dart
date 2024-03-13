import 'package:flutter/material.dart';

void main()=> runApp(const MySnackBar());


    class MySnackBar extends StatelessWidget{
    const MySnackBar({Key? key}) : super (key: key);

    @override
      Widget build(BuildContext context){
      return MaterialApp(
        title: 'MySnackBar',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('MySnackBar'),
          ),
          body: const SnackBarContent(),
        )
      );
    }
    }

    class SnackBarContent extends StatelessWidget{
      const SnackBarContent({Key? key}) : super (key: key);

      @override
      Widget build(BuildContext context){
        return Center(
          child: ElevatedButton(
            onPressed: (){
              final snackBar = SnackBar(content: const Text('This is your SnackBar'),
              action: SnackBarAction(
                label: 'Back',
                onPressed: (){
                  //
                },
              )
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Show SnackBar'),
          )
        );
      }
    }