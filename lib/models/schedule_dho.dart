class ScheduleDho {
  int? code;
  String? message;
  Data? data;
  Headers? headers;

  ScheduleDho({this.code, this.message, this.data, this.headers});

  ScheduleDho.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    headers =
        json['headers'] != null ? new Headers.fromJson(json['headers']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.headers != null) {
      data['headers'] = this.headers!.toJson();
    }
    return data;
  }
}

class Data {
  StudentInfo? studentInfo;
  List<StudentSchedule>? studentSchedule;

  Data({this.studentInfo, this.studentSchedule});

  Data.fromJson(Map<String, dynamic> json) {
    studentInfo = json['studentInfo'] != null
        ? new StudentInfo.fromJson(json['studentInfo'])
        : null;
    if (json['studentSchedule'] != null) {
      studentSchedule = <StudentSchedule>[];
      json['studentSchedule'].forEach((v) {
        studentSchedule!.add(new StudentSchedule.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.studentInfo != null) {
      data['studentInfo'] = this.studentInfo!.toJson();
    }
    if (this.studentSchedule != null) {
      data['studentSchedule'] =
          this.studentSchedule!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StudentInfo {
  String? displayName;
  String? studentCode;
  String? gender;
  String? birthday;

  StudentInfo({this.displayName, this.studentCode, this.gender, this.birthday});

  StudentInfo.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    studentCode = json['studentCode'];
    gender = json['gender'];
    birthday = json['birthday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['studentCode'] = this.studentCode;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    return data;
  }
}

class StudentSchedule {
  String? day;
  String? subjectCode;
  String? subjectName;
  String? className;
  String? teacher;
  String? lesson;
  String? room;

  StudentSchedule(
      {this.day,
      this.subjectCode,
      this.subjectName,
      this.className,
      this.teacher,
      this.lesson,
      this.room});

  StudentSchedule.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    subjectCode = json['subjectCode'];
    subjectName = json['subjectName'];
    className = json['className'];
    teacher = json['teacher'];
    lesson = json['lesson'];
    room = json['room'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['subjectCode'] = this.subjectCode;
    data['subjectName'] = this.subjectName;
    data['className'] = this.className;
    data['teacher'] = this.teacher;
    data['lesson'] = this.lesson;
    data['room'] = this.room;
    return data;
  }
}

class Headers {
  String? contentType;

  Headers({this.contentType});

  Headers.fromJson(Map<String, dynamic> json) {
    contentType = json['Content-Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Content-Type'] = this.contentType;
    return data;
  }
}
