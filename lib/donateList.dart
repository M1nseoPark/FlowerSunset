import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'donateItem.dart';


class DonateList extends StatefulWidget {
  @override
  State<DonateList> createState() => _DonateList();
}

class _DonateList extends State<DonateList> {
  // final List<Senior>? list;
  // DonateList({Key? key, this.list}) : super(key: key);

  double lat = 0;
  double lng = 0;
  Location location = new Location();
  bool _serviceEnabled = true;
  late PermissionStatus _permissionGranted;

  _locateMe() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    await location.getLocation().then((value) {
      setState(() {
        lat = value.latitude!;
        lng = value.longitude!;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            '$lat $lng',
            // '$address2',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,

          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.my_location_outlined,
                color: Colors.black,
              ),
              onPressed: () async{
                _locateMe();
                // address2 = await getPlaceAddress(lat, lng);
                // address2 = 'change';
              },)
          ],
        ),
        body: Container(
            child: Column(
              children: [
                Container(
                    width: 310,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Color(0xffF87366),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '내 위치 근처 나눔 추천',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Text(
                              '원포원 기부를 통해 따뜻한 마음을 전해요',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            height: 42,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: Colors.white),
                              child: const Text('자세히', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                            ),)
                        ],
                      ),
                    )
                ),
                Expanded(child: _createSeniorList(),)
              ],
            )
        )
    );
  }

  Widget _createSeniorList() {
    return ListView.separated(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return _createSeniorCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 5.0,
          height: 8.0,
          color: Colors.transparent,
        );
      },
    );
  }

  Widget _createSeniorCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: _createSeniorItemRow(),
      ),
    );
  }

  Widget _createSeniorItemRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _createSeniorItemContentWidget(),
      ],
    );
  }

  Widget _createSeniorItemContentWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("이영자 어르신",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Text("배고픔보다 정이 고파요",
          style: TextStyle(fontSize: 15),),
      ],
    );
  }
}
