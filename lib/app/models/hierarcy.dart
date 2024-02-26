class Hierarcy {
  String? parentId;
  String? parentName;
  String? siteId;
  String? siteName;
  int? ctId;
  String? description;
  int? pos;
  int? ciId;
  int? visible;

  Hierarcy(
      {this.parentId,
      this.parentName,
      this.siteId,
      this.siteName,
      this.ctId,
      this.description,
      this.pos,
      this.ciId,
      this.visible});

  Hierarcy.fromJson(Map<String, dynamic> json) {
    parentId = json['ParentId'];
    parentName = json['ParentName'];
    siteId = json['SiteId'];
    siteName = json['SiteName'];
    ctId = json['CtId'];
    description = json['Description'];
    pos = json['Pos'];
    ciId = json['CiId'];
    visible = json['Visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ParentId'] = parentId;
    data['ParentName'] = parentName;
    data['SiteId'] = siteId;
    data['SiteName'] = siteName;
    data['CtId'] = ctId;
    data['Description'] = description;
    data['Pos'] = pos;
    data['CiId'] = ciId;
    data['Visible'] = visible;
    return data;
  }
}
