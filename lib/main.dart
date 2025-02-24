import 'package:flutter/material.dart';
import 'screens/admin/admin_login.dart';
import 'screens/admin/admin_dashboard.dart';
import 'screens/admin/admin_workout_diet_plan.dart';
import 'screens/user/user_login.dart';
import 'screens/user/user_register.dart';
import 'screens/user/user_dashboard.dart';
import 'screens/user/profile_management.dart';
import 'screens/user/activity_tracking.dart';
import 'screens/user/progress_monitoring.dart';
import 'screens/user/goal_setting.dart';
import 'screens/user/workout_recommendations.dart';
import 'screens/user_or_admin.dart';  // استيراد شاشة اختيار الدور

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',  // هنا يتم تحديد شاشة البداية
      routes: {
        '/': (context) => UserOrAdminScreen(),  // شاشة اختيار الدور
        '/user/login': (context) => UserLoginScreen(),
        '/user/register': (context) => UserRegisterScreen(),
        '/user/dashboard': (context) => UserDashboard(),
        '/user/profile': (context) => ProfileManagement(),
        '/user/activity': (context) => ActivityTracking(),
        '/user/progress': (context) => ProgressMonitoring(),
        '/user/goals': (context) => GoalSetting(),
        '/user/workouts': (context) => WorkoutRecommendations(),
        '/admin/login': (context) => AdminLoginScreen(),
        '/admin/dashboard': (context) => AdminDashboard(),
        '/admin/plans': (context) => AdminWorkoutDietPlan(),
      },
    );
  }
}
