import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutEducation extends StatelessWidget {
  const AboutEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 12,
        ),
        child: SizedBox(
          width: 160.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. A.P.J. Kalam Technical University, Lucknow',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Bachlors of Technology\n2019-Present',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'New Standard Public School, Raebareli',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Intermediate\n2017-2019',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'New Standard Public School, Raebareli',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'High School\n2015-2017',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}












// child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             width: 100,
//             height: 280,
//             child: Stack(
//               children: [
//                 Center(
//                   child: Container(
//                     alignment: Alignment.topCenter,
//                     width: 2,
//                     height: 500,
//                     color: AppConstant.subtitlecolor,
//                   ),
//                 ),
//                 const Positioned(
//                   left: 25,
//                   top: 20,
//                   child: CircleAvatar(
//                     backgroundColor: AppConstant.primaryColor,
//                     radius: 25,
//                     child: FaIcon(
//                       Icons.school_rounded,
//                       color: AppConstant.titlecolor,
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   left: 25,
//                   top: 120,
//                   child: CircleAvatar(
//                     backgroundColor: AppConstant.primaryColor,
//                     radius: 25,
//                     child: FaIcon(
//                       Icons.book,
//                       color: AppConstant.titlecolor,
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   left: 25,
//                   top: 210,
//                   child: CircleAvatar(
//                     backgroundColor: AppConstant.primaryColor,
//                     radius: 25,
//                     child: FaIcon(
//                       Icons.book,
//                       color: AppConstant.titlecolor,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 8.0,
//               vertical: 16,
//             ),
//             child: SizedBox(
//               width: 160.w,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Dr. A.P.J. Kalam Technical University, Lucknow',
//                     style: Theme.of(context).textTheme.headline5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Bachlors of Technology\n2019-Present',
//                       style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                             fontSize: 9.sp,
//                           ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'New Standard Public School, Raebareli',
//                     style: Theme.of(context).textTheme.headline5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Intermediate\n2017-2019',
//                       style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                             fontSize: 9.sp,
//                           ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Text(
//                     'New Standard Public School, Raebareli',
//                     style: Theme.of(context).textTheme.headline5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'High School\n2015-2017',
//                       style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                             fontSize: 9.sp,
//                           ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
