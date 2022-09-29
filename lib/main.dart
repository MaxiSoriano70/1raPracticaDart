import 'package:flutter/material.dart';

void main() {
  runApp(
      const Desafio_5()
  );
}

class Desafio_5 extends StatefulWidget {
  const Desafio_5({Key? key}) : super(key: key);

  @override
  State<Desafio_5> createState() => _Desafio_5State();
}

class _Desafio_5State extends State<Desafio_5> {
  bool estaVisible=false;
  double altura=120;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Calendar App',
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Desafio 5",style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.red,
          elevation: 15,
        ),
        body: Center(child: Card(),),
      ),
    );
  }

  Widget Card(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
        color: Colors.white,
        height: altura,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Titulo(),
              Visibility(
                visible: estaVisible,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Divider(),
                      SizedBox(height: 10,),
                      DescipcionBasica(),
                      SizedBox(height: 10,),
                      Divider(),
                      SizedBox(height: 10,),
                      Buttons()
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget Titulo(){
    return InkWell(
      onTap: (){
        setState(() {
          estaVisible=!estaVisible;
          altura=estaVisible==false?120:420;
        });
      },
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://i.pinimg.com/736x/77/b7/6f/77b76f4cd401b63395da01916de75038.jpg'),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Roco",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              SizedBox(height: 5,),
              Text("Canino",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget DescipcionBasica(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color(0xffEA2A78),
                  width: 5.0
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Container(
                color: Color(0xffEA2A78),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Center(
                  child: Text("Descripción Basica",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fecha de Nacimiento: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xff081A3F),width: 1.0)),
                      ),
                    )),
                    Text(" 02/02/2020",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Edad: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xff081A3F),width: 1.0)),
                      ),
                    )),
                    Text(" 5 años",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Color: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xff081A3F),width: 1.0)),
                      ),
                    )),
                    Text(" Dorado",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Peso: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Expanded(child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xff081A3F),width: 1.0)),
                      ),
                    )),
                    Text(" 35 kl",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }

  Widget Buttons(){
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xff081A3F),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5,),
                    Text("Ver mas",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5,),
                    Text("Modificar",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),
                      Text("Eliminar",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
