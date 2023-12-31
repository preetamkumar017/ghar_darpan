import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_darpan/res/colors/app_color.dart';


class DataNotFoundExceptionWidget extends StatefulWidget {
  final VoidCallback onPress ;
  const DataNotFoundExceptionWidget({Key? key , required this.onPress}) : super(key: key);

  @override
  State<DataNotFoundExceptionWidget> createState() => _DataNotFoundExceptionWidgetState();
}

class _DataNotFoundExceptionWidgetState extends State<DataNotFoundExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15 ,),
          const Icon(Icons.cached_outlined , color: AppColor.redColor,size: 50,),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(child: Text('No Data Found \n Please try again' , textAlign: TextAlign.center,)),
          ),
          SizedBox(height: height * .15 ,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor ,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Text('Retry' , style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
