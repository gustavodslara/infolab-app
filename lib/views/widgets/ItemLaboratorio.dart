import 'package:flutter/material.dart';
import 'package:infolab_app/models/Laboratorio.dart';

class ItemLaboratorio extends StatelessWidget {
  Laboratorio laboratorio;
  VoidCallback onTapItem;
  VoidCallback onPressedEdit;

  ItemLaboratorio({
    @required this.laboratorio,
    this.onTapItem,
    this.onPressedEdit,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTapItem,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 120,
                child: Image.network(
                  laboratorio.fotos[0],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        laboratorio.nome,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        laboratorio.responsavel,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        laboratorio.email,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
              ),
              if (this.onPressedEdit != null)
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    onPressed: this.onPressedEdit,
                    child: Icon(Icons.edit, color: Colors.black),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
