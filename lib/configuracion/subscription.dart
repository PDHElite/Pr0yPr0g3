import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:necflislogymenu/configuracion/pago.dart';
import 'package:necflislogymenu/menu.dart';


class Subscription extends StatefulWidget {
  const Subscription({Key key}) : super(key: key);

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => menu()));
          },
        ),
        title: Text(
          'BACK',
          style: TextStyle(color: Colors.white,fontSize: 14),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _netflixLogo(),
              _netflix(),
              _currentPlan(),
              _infoBox(),
              _cancelSubscription(),
              Expanded(child: _otherPlanLayout()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _otherPlanLayout() {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.1,
          left: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _otherPlansLabel(),
          _planRow(),
        ],
      ),
    );
  }

  Widget _planRow() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _standardPlanBox(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          _premiumPlanBox()
        ],
      ),
    );
  }

  Widget _standardPlanBox() {
    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.04),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.redAccent[100],
          highlightColor: Colors.white,
          onTap: () => {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pagos()))},
          child: Container(
            height: MediaQuery.of(context).size.width * 0.35,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildPlanLabel('Standard'),
                _buildPlanPrice('\$12.99/mo'),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: _buildFeatureLabel('-HD Video Support'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: _buildFeatureLabel(
                      '-Simultaneous viewing\n up to 2 people'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _premiumPlanBox() {
    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.04),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.redAccent[100],
          highlightColor: Colors.white,
          onTap: () => {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pagos()))},
          child: Container(
            height: MediaQuery.of(context).size.width * 0.35,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildPlanLabel('Premium'),
                _buildPlanPrice('\$18.99/mo'),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: _buildFeatureLabel('-4k Video Support'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: _buildFeatureLabel(
                      '-Simultaneous viewing\n up to 4 people'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlanPrice(String price) {
    return Text(
      price,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w900, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildFeatureLabel(String label) {
    return Text(
      label,
      style: TextStyle(
          letterSpacing: 0.2,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 10),
      textAlign: TextAlign.start,
    );
  }

  Widget _buildPlanLabel(String label) {
    return Text(
      label,
      style: TextStyle(
          letterSpacing: 0.1,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 12),
      textAlign: TextAlign.center,
    );
  }


  Widget _otherPlansLabel() {
    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.06),
      child: Text(
        'Otros Planes',
        style: TextStyle(
            letterSpacing: 0.5,
            color: Colors.grey,
            fontWeight: FontWeight.w800,
            fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _cancelSubscription() {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'CANCELAR SUBSCRIPTION',
            style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Icon(
            CupertinoIcons.forward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _infoBox() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.08),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin:
          EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Su suscripci??n actual finalizara hoy.\nY se renovara autom??ticamente.',
            style: TextStyle(
                letterSpacing: 1,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _netflix() {
    return Center(
      child: Padding(
        padding:
        EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: Text('Necflis',
            style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _currentPlan() {
    return Center(
      child: Padding(
        padding:
        EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("\$9/Month",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Text("Plan Basico",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _netflixLogo() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, 1))
          ]),
      child: Center(
        child: Text(
          'N',
          style: TextStyle(
              fontSize: 34, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }


}
