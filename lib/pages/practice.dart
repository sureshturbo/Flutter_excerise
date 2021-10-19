import 'package:flutter/material.dart';

class Add_pro extends StatelessWidget {
  //TextEditingController _company_name = TextEditingController();
  TextEditingController _category = TextEditingController();
  TextEditingController _company_name = TextEditingController();
  TextEditingController _product_name = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _pieces = TextEditingController();
  TextEditingController _description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'ADD PRODUCTS',
            style: TextStyle(color: Colors.black),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Stack(children: [
          first(context),
          Align(
            alignment: Alignment.bottomCenter,
            child: IgnorePointer(
              //ignoring: ignore,
              child: Container(
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    // getTranslated(context, '1895').toUpperCase() ??
                    'Add Items'.toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  //color: Colors.green,
                  color: Theme.of(context).buttonColor,
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ),
        ]));
  }

  Widget first(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Form(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //catagory
              Container(
                child: TextFormField(
                  controller: _category,
                  validator: (value) {
                    if (value == null) {
                      return 'Enter Company Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: // getTranslated(context, '1913') ??
                        'Category',
                    labelStyle: TextStyle(
                      //color: Color(0xff403C3C),
                      color: Theme.of(context).accentColor,
                      //color: Colors.greenAccent,
                      fontSize: 14,
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide:
                    //         BorderSide(color: Theme.of(context).accentColor)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).accentColor)),

                    hintStyle: TextStyle(
                      // color: Colors.blueGrey,
                      color: Theme.of(context).accentColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              //color: Colors.green.withOpacity(0.3),
                              color: Theme.of(context)
                                  .buttonColor
                                  .withOpacity(0.3)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 25, right: 25, bottom: 5),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                  //color: Colors.green,
                                  color: Theme.of(context).buttonColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  )),
              //product name
              Container(
                child: TextFormField(
                  controller: _company_name,
                  validator: (value) {
                    if (value == null) {
                      return 'Enter Company Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: // getTranslated(context, '1913') ??
                        'Product name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).accentColor)),
                    hintStyle: TextStyle(
                      // color: Colors.blueGrey,
                      color: Theme.of(context).accentColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              //hide and unhide
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: 0,
                        onChanged: (val) {},
                      ),
                      Text(
                        'Show price',
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: 1,
                        onChanged: (val) {},
                      ),
                      Text(
                        'Hide price',
                        style: new TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: new TextFormField(
                        controller: _price,
                        decoration: new InputDecoration(
                          labelText:
                              //getTranslated(context, '136') ??
                              "Price",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor)),
                          hintStyle: TextStyle(
                            // color: Colors.blueGrey,
                            color: Theme.of(context).accentColor,
                            fontSize: 14,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('per'),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Flexible(
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: new TextFormField(
                        controller: _pieces,
                        decoration: new InputDecoration(
                          labelText:
                              //getTranslated(context, '135') ??
                              "Pieces",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor)),
                          hintStyle: TextStyle(
                            // color: Colors.blueGrey,
                            color: Theme.of(context).accentColor,
                            fontSize: 14,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: TextFormField(
                  controller: _description,
                  validator: (value) {
                    if (value == null) {
                      return 'Enter Company Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: // getTranslated(context, '1913') ??
                        'Description',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).accentColor)),
                    hintStyle: TextStyle(
                      // color: Colors.blueGrey,
                      color: Theme.of(context).accentColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1, color: Theme.of(context).buttonColor)),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).buttonColor,
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
