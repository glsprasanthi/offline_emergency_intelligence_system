import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static void enableOffline() {
    FirebaseFirestore.instance.settings = const Settings(
      persistenceEnabled: true,
    );
  }
}
