import 'package:flutter/material.dart';

class MyListViewNews extends StatelessWidget {
  const MyListViewNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          const Divider(),
          ListTile(
            leading: Image.network("https://pics6.baidu.com/feed/dc54564e9258d109beefeb98561e56b36c814d5a.jpeg"),
            title: Text("“西湖牌”莲蓬荷叶义卖重启"),
            subtitle: Text("中新网杭州8月8日电 (王题题 王琼苓)在浙江杭州，每年夏天购买“西湖牌”的荷叶莲蓬，已成为不少市民游客的一种习惯。8月8日，一年一度的西湖莲蓬荷叶义卖在杭州西湖畔重启，杭州亚运会吉祥物“江南忆”组合亮相助力义卖。"),
          ),
          const Divider(),
          ListTile(
            leading: Image.network("https://pics4.baidu.com/feed/4610b912c8fcc3ce7a16edddf4514c84d53f202e.jpeg"),
            title: Text("2023中国·杭州博士后科创精英赛总决赛"),
            subtitle: Text("8月8日，“大走廊杯”2023中国·杭州博士后科创精英赛总决赛在未来科技城学术交流中心开幕。15项“高精尖”博士后科技创新项目团队齐聚杭州城西科创大走廊，上演了一场青年科学家的“华山论剑”。"),
          ),
          const Divider(),
          ListTile(
            leading: Image.network("https://pics6.baidu.com/feed/472309f7905298224acee09057f0e1c70b46d4af.jpeg"),
            title: Text("乘大运之风，共赴光辉灿烂美好未来"),
            subtitle: Text("舞动青春，乐动蓉城,第31届世界大学生夏季运动会将于8月8日闭幕。"),
          ),
        ],
      ),
    );
  }
}
