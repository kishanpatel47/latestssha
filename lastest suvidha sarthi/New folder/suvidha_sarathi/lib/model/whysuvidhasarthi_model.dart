class whysuvidhasarathi_model {
  String? returnCode;
  String? returnMsg;
  String? returnValue;
  Data? data;

  whysuvidhasarathi_model(
      {this.returnCode, this.returnMsg, this.returnValue, this.data});

  whysuvidhasarathi_model.fromJson(Map<String, dynamic> json) {
    returnCode = json['ReturnCode'];
    returnMsg = json['ReturnMsg'];
    returnValue = json['ReturnValue'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ReturnCode'] = this.returnCode;
    data['ReturnMsg'] = this.returnMsg;
    data['ReturnValue'] = this.returnValue;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Question>? question;
  List<Link>? link;
  Bank? bank;

  Data({this.question, this.link, this.bank});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['Question'] != null) {
      question = <Question>[];
      json['Question'].forEach((v) {
        question!.add(new Question.fromJson(v));
      });
    }
    if (json['Link'] != null) {
      link = <Link>[];
      json['Link'].forEach((v) {
        link!.add(new Link.fromJson(v));
      });
    }
    bank = json['Bank'] != null ? new Bank.fromJson(json['Bank']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.question != null) {
      data['Question'] = this.question!.map((v) => v.toJson()).toList();
    }
    if (this.link == null) {
      data['Link'] = this.link!.map((v) => v.toJson()).toList();
    }
    if (this.bank != null) {
      data['Bank'] = this.bank!.toJson();
    }
    return data;
  }
}

class Question {
  int? iD;
  String? question;
  String? answer;

  Question({this.iD, this.question, this.answer});

  Question.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    question = json['Question'];
    answer = json['Answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Question'] = this.question;
    data['Answer'] = this.answer;
    return data;
  }
}

class Link {
  int? iD;
  String? name;
  String? text;

  Link({this.iD, this.name, this.text});

  Link.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Text'] = this.text;
    return data;
  }
}

class Bank {
  String? bankName;
  String? accountHolderName;
  String? iFSCCode;
  String? accoutNumber;
  String? address;

  Bank(
      {this.bankName,
      this.accountHolderName,
      this.iFSCCode,
      this.accoutNumber,
      this.address});

  Bank.fromJson(Map<String, dynamic> json) {
    bankName = json['BankName'];
    accountHolderName = json['AccountHolderName'];
    iFSCCode = json['IFSCCode'];
    accoutNumber = json['AccoutNumber'];
    address = json['Address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BankName'] = this.bankName;
    data['AccountHolderName'] = this.accountHolderName;
    data['IFSCCode'] = this.iFSCCode;
    data['AccoutNumber'] = this.accoutNumber;
    data['Address'] = this.address;
    return data;
  }
}
