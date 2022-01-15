import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:working_it/main.dart';

//Here is where all the API feed will be
class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      scrollDirection: Axis.vertical,
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[

        //All images that show in the feed are here
        //This will have the API data later
        Image.network(
          'https://flyaps.com/blog/content/images/2020/06/Top-25-Unicorn-2.png',
          width: 50,
          height: 100,
          fit: BoxFit.scaleDown,
        ),
        Image.network(
          'https://research-assets.cbinsights.com/2021/09/08151817/90-companies-building-the-metaverse-export-3000x2250-6.png',
          width: 100,
          height: 100,
          fit: BoxFit.scaleDown,
        ),
        Image.network(
          'https://www.thebalancecareers.com/thmb/zrT1oAooA1yt3qNTTAWtiYNHhWw=/1500x1000/filters:fill(auto,1)/how-to-land-your-first-job-after-college-2059853_v2-fdc541e368af4aeba60b54653af05cc5.png',
          width: 100,
          height: 100,
          fit: BoxFit.scaleDown,
        ),
      ],
    );
  }
}
