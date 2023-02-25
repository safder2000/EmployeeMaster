class EmployeeModel {
  final String name;
  final String code;
  final String remarks;
  final String address;
  final String mobileNumber;

  EmployeeModel({
    required this.name,
    required this.code,
    required this.remarks,
    required this.address,
    required this.mobileNumber,
  });
  Map<String, dynamic> toJson() => {
        'name': name,
        'code': code,
        'remarks': remarks,
        'address': address,
        'mobileNumber': mobileNumber,
      };

  static EmployeeModel fromJson(Map<String, dynamic> json) => EmployeeModel(
        name: json['name'],
        code: json['code'],
        remarks: json['remarks'],
        address: json['address'],
        mobileNumber: json['mobileNumber'],
      );
}
