import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chanthaburi Travel & Cafe Guide',
      debugShowCheckedModeBanner: false, // ปิดแถบคาด DEBUG สีแดงมุมขวา
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF1F8E9), // สีพื้นหลังเขียวอ่อนธรรมชาติ
      ),
      home: const ChanthaburiTravelPage(),
    );
  }
}

class ChanthaburiTravelPage extends StatelessWidget {
  const ChanthaburiTravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ดึงความกว้างของหน้าจอเพื่อทำระบบ Responsive (รองรับทั้งคอมและมือถือ)
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chanthaburi Travel Guide',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2E7D32), // สีเขียวเข้มธรรมชาติ
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. ส่วนหัวข้อใหญ่ด้านบน (Hero Banner)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xFF1B5E20), // สีเขียวเข้ม
                border: Border(
                  bottom: BorderSide(color: Color(0xFFFFB300), width: 6), // เส้นขอบล่างสีเหลืองทอง
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'เที่ยวจันทบุรี สัมผัสวิถีธรรมชาติ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFB300), // ข้อความสีทอง
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'ขุมทรัพย์แห่งสายลม แสงแดด ขุนเขา และสายน้ำ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const SizedBox(height: 20),
                  // ป้ายแสดงผู้จัดทำ
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFB300),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'ผู้จัดทำ: 6714421035 ธนากร เสนามนตรี',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B5E20),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 2. ส่วนกล่องเนื้อหาหลัก (Content Card)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 900), 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    )
                  ],
                ),
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    // กล่องคำคม / ไฮไลท์ธรรมชาติ
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F5E9), // สีเขียวพาสเทลอ่อนด้านใน
                        border: const Border(
                          left: BorderSide(color: Color(0xFF2E7D32), width: 5),
                          right: BorderSide(color: Color(0xFF2E7D32), width: 5),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            '"ธรรมชาติไม่ได้สร้างมาเพื่อให้เราทำลาย แต่สร้างมาเพื่อให้เราเรียนรู้และพักIผ่อน"',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Color(0xFF1B5E20),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '- บันทึกการเดินทางในจันทบุรี -',
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),

                    // หัวข้อ: เกี่ยวกับจันทบุรี
                    const Text(
                      'เสน่ห์เมืองจันท์',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E7D32),
                      ),
                    ),
                    const Divider(color: Color(0xFFFFB300), thickness: 2),
                    const SizedBox(height: 10),
                    const Text(
                      '      จันทบุรีเป็นจังหวัดที่มีความอุดมสมบูรณ์ทั้งทางธรรมชาติและวัฒนธรรม มีทั้งป่าชายเลนอันอุดมสมบูรณ์ คลองธรรมชาติ น้ำตกใสสะอาด และเทือกเขาสูง เหมาะสำหรับผู้ที่ชื่นชอบการท่องเที่ยวเชิงธรรมชาติและการผจญภัยในวันหยุด',
                      style: TextStyle(fontSize: 15, height: 1.6, color: Colors.black87),
                    ),
                    const SizedBox(height: 30),

                    // หัวข้อ: แนะนำสถานที่ท่องเที่ยว
                    const Text(
                      'ประเภทสถานที่ท่องเที่ยวแนะนำ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E7D32),
                      ),
                    ),
                    const Divider(color: Color(0xFFFFB300), thickness: 2),
                    const SizedBox(height: 15),

                    // ตาราง/Layout แสดงหมวดหมู่ (ปรับตามขนาดหน้าจออัตโนมัติ)
                    screenWidth > 700 
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: _buildCategoryCard('สายน้ำ & คลองธรรมชาติ', ['คลองภักดีรำไพ', 'จุดตกปลาธรรมชาติ', 'ล่องแก่งธรรมชาติ'])),
                            const SizedBox(width: 15),
                            Expanded(child: _buildCategoryCard('ขุนเขา & น้ำตก', ['น้ำตกพลิ้ว', 'อุทยานแห่งชาติน้ำตกสอยดาว', 'จุดชมวิวเขาคิชฌกูฏ'])),
                            const SizedBox(width: 15),
                            Expanded(child: _buildCategoryCard('คาเฟ่ & วิถีชุมชน', ['คาเฟ่ริมน้ำจันทบูร', 'ชุมชนริมน้ำจันทบูร', 'สวนผลไม้ท้องถิ่น'])),
                          ],
                        )
                      : Column(
                          children: [
                            _buildCategoryCard('สายน้ำ & คลองธรรมชาติ', ['คลองภักดีรำไพ', 'จุดตกปลาธรรมชาติ', 'ล่องแก่งธรรมชาติ']),
                            const SizedBox(height: 15),
                            _buildCategoryCard('ขุนเขา & น้ำตก', ['น้ำตกพลิ้ว', 'อุทยานแห่งชาติน้ำตกสอยดาว', 'จุดชมวิวเขาคิชฌกูฏ']),
                            const SizedBox(height: 15),
                            _buildCategoryCard('คาเฟ่ & วิถีชุมชน', ['คาเฟ่ริมน้ำจันทบูร', 'ชุมชนริมน้ำจันทบูร', 'สวนผลไม้ท้องถิ่น']),
                          ],
                        ),
                  ],
                ),
              ),
            ),

            // 3. ส่วนท้ายหน้า (Footer)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: const Color(0xFF1B5E20),
              child: const Center(
                child: Text(
                  '© 2026 Chanthaburi Guide • พัฒนาโดย 6714421035 ธนากร เสนามนตรี',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันย่อยสำหรับสร้างการ์ดหมวดหมู่สถานที่
  Widget _buildCategoryCard(String title, List<String> items) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        border: Border.all(color: const Color(0xFFC8E6C9)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17, 
              fontWeight: FontWeight.bold, 
              color: Color(0xFF2E7D32)
            ),
          ),
          const SizedBox(height: 5),
          const Divider(color: Color(0xFFFFB300)),
          const SizedBox(height: 5),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Text('• ', style: TextStyle(color: Color(0xFFFFB300), fontWeight: FontWeight.bold)),
                    Text(item, style: const TextStyle(fontSize: 14, color: Colors.black87)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}