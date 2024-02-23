import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutEducation extends StatelessWidget {
  const AboutEducation({
    super.key,
  });

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
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Bachlors of Technology\n2019-Present',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'New Standard Public School, Raebareli',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Intermediate\n2017-2019',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'New Standard Public School, Raebareli',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'High School\n2015-2017',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
