import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Text(
              "Logoipsum",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Spacer(),
            Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Scans',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RecentScanCard(
                imageUrl: 'assets/skin_care.png',
                title: 'ABC skin care solution',
                date: '12/30/2023 09:41',
                status: 'Low Risk',
                statusColor: Colors.orange,
                icon: Icons.warning,
              ),
              SizedBox(height: 10),
              RecentScanCard(
                imageUrl: 'assets/skin_care.png',
                title: 'ABC skin care solution',
                date: '12/30/2023 09:41',
                status: 'Safe',
                statusColor: Colors.green,
                icon: Icons.check_circle,
              ),
              SizedBox(height: 20),
              Text(
                'Educational Insight',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              EducationalInsightCard(
                imageUrl: 'assets/food_price.png',
                title: 'Food price rise fears amid staff shortages',
                subtitle: 'Nature Channel \u2022 4 min ago',
              ),
              EducationalInsightCard(
                imageUrl: 'assets/horror_movie.png',
                title: "2021's Most Brilliant Horror Movie",
                subtitle: 'Nature Channel \u2022 4 min ago',
              ),
              EducationalInsightCard(
                imageUrl: 'assets/jobs_growth.png',
                title: 'US Jobs Growth Disappoints As Recovery Falters',
                subtitle: 'Nature Channel \u2022 4 min ago',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentScanCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String status;
  final Color statusColor;
  final IconData icon;

  RecentScanCard({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(imageUrl, width: 50, height: 50),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 4),
                  Text(
                    date,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(icon, color: statusColor),
                SizedBox(height: 4),
                Text(
                  status,
                  style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EducationalInsightCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  EducationalInsightCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(imageUrl, width: 50, height: 50),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
