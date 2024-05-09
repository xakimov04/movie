import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/modules/download_card.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Downloads",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController,
          tabs: const [
            Tab(
              text: "List Movie",
            ),
            Tab(
              text: "Downloading",
            ),
          ],
        ),
      ),
      body: DownloadBody(tabController: _tabController),
    );
  }
}

class DownloadBody extends StatefulWidget {
  final TabController _tabController;

  const DownloadBody({Key? key, required TabController tabController})
      : _tabController = tabController,
        super(key: key);

  @override
  _DownloadBodyState createState() => _DownloadBodyState();
}

class _DownloadBodyState extends State<DownloadBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TabBarView(
        controller: widget._tabController,
        children: const [
          Column(
            children: [
              CardButton(
                  text: "Captain america: The First\nAvenger (2011)",
                  speed: "720K/s",
                  gb: "1.5Gb",
                  mb: "250MB/",
                  image: "captian",
                  icon: "marvel"),
              CardButton(
                  text: "Disney's Aladdin (2019)",
                  speed: "923K/s",
                  gb: "1.2GB",
                  mb: "432MB/",
                  image: "aladin",
                  icon: "disneylogo"),
            ],
          )
        ],
      ),
    );
  }
}
