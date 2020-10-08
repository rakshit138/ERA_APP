import 'package:ERA/models/videodetail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetVideo {
  List<VideoDetail> videoList = List<VideoDetail>();
  Future<List<VideoDetail>> fetchAllVideos() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Videos")
        .orderBy("timestamp")
        .getDocuments();
    for (var i = 0; i < querySnapshot.documents.length; i++) {
      videoList.add(VideoDetail.fromMap(querySnapshot.documents[i].data()));
    }
    return videoList;
  }
}
