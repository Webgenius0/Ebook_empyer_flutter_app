import 'package:abdilahi/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSettingsModal(context);
          },
          child: const Text('Open Settings'),
        ),
      ),
    );
  }

  void _showSettingsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Brightness Slider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Brightness', style: TextStyle(fontSize: 16.0)),
                  Expanded(
                    child: Slider(
                      value: 50,
                      min: 0,
                      max: 100,
                      onChanged: (value) {},
                    ),
                  ),
                  const Text('50%', style: TextStyle(fontSize: 14.0)),
                ],
              ),

              UIHelper.verticalSpace(16.h),

              // Background Color Selection
              const Text(
                'Background Color',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),

              UIHelper.verticalSpace(8.h),

              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: List.generate(8, (index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: _getBackgroundColor(index),
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                }),
              ),

              UIHelper.verticalSpace(16.h),

              // Font Size Slider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Font Size', style: TextStyle(fontSize: 16.0)),
                  Expanded(
                    child: Slider(
                      value: 18,
                      min: 12,
                      max: 30,
                      onChanged: (value) {},
                    ),
                  ),
                  const Text('18', style: TextStyle(fontSize: 14.0)),
                ],
              ),

              UIHelper.verticalSpace(16.h),

              // Layout Options
              const Text(
                'Font Alignment',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),

              UIHelper.verticalSpace(8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildFontAlignmentButton(Icons.format_align_left),
                  _buildFontAlignmentButton(Icons.format_align_center),
                  _buildFontAlignmentButton(Icons.format_align_right),
                  _buildFontAlignmentButton(Icons.format_align_justify),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper method to get background colors
  Color _getBackgroundColor(int index) {
    const colors = [
      Colors.white,
      Colors.black,
      Colors.grey,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.deepOrange,
      Colors.teal,
    ];
    return colors[index % colors.length];
  }

  // Helper method for font alignment buttons
  Widget _buildFontAlignmentButton(IconData icon) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () {},
      color: Colors.black,
    );
  }
}

void main() => runApp(const MaterialApp(home: SettingsScreen()));
