import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:medical/const/doctors.dart';
import 'package:medical/const/patients.dart';
import 'package:medical/models/medical_model.dart';
import 'package:medical/models/patient_model.dart';
import 'package:medical/screens/doctors_page.dart';
import 'package:medical/screens/home_page.dart';
import 'package:medical/screens/patient_page.dart';

class InputController extends GetxController {
  final logId = TextEditingController();
  final logPass = TextEditingController();
  final crName = TextEditingController();
  final crPhone = TextEditingController();
  final crBirth = TextEditingController();
  final crId = TextEditingController();
  final crGender = TextEditingController();
  final crPass = TextEditingController();
  final crAdress = TextEditingController();

  final doctors = Doctors.doctors;
  final patients = Patients.patients;

  @override
  void onClose() {
    logId.dispose();
    logPass.dispose();
    crName.dispose();
    crPhone.dispose();
    crBirth.dispose();
    crId.dispose();
    crGender.dispose();
    crPass.dispose();
    crAdress.dispose();
    super.onClose();
  }

  MedicalStaffModel getDoctor() {
    final doctor = doctors.firstWhere((e) =>
        logId.text.trim() == e.id.toString().trim() && logPass.text.trim() == e.password.trim());

    return doctor;
  }

  PatientModel getPatient() {
    final patient = patients.firstWhere((e) =>
        logId.text.trim() == e.id.toString().trim() && logPass.text.trim() == e.password.trim());

    return patient;
  }

  void addDoctor() {
    final doctor = MedicalStaffModel(
      name: crName.text.trim(),
      phone: crBirth.text.trim(),
      birth: crBirth.text.trim(),
      id: crId.text.trim(),
      gender: crGender.text.trim(),
      password: crPass.text.trim(),
    );
    doctors.add(doctor);
    Get.to(const HomePage());

    EasyLoading.showToast("Doctor Added!", maskType: EasyLoadingMaskType.black);
  }

  void addPatient() {
    final patient = PatientModel(
      name: crName.text.trim(),
      phone: crBirth.text.trim(),
      birth: crBirth.text.trim(),
      id: crId.text.trim(),
      gender: crGender.text.trim(),
      password: crPass.text.trim(),
      adress: crAdress.text.trim(),
    );
    patients.add(patient);
    Get.to(const HomePage());

    EasyLoading.showToast("Patient Added!", maskType: EasyLoadingMaskType.black);
  }

  void doctorLogin() {
    final doctor = doctors.any((e) =>
        logId.text.trim() == e.id.toString().trim() && logPass.text.trim() == e.password.trim());
    if (doctor) {
      Get.to(const DoctorsPage());
    } else {
      EasyLoading.showToast("Log In Failed", maskType: EasyLoadingMaskType.black);
    }
  }

  void patientLogin() {
    final patient = patients.any((e) =>
        logId.text.trim() == e.id.toString().trim() && logPass.text.trim() == e.password.trim());
    if (patient) {
      Get.to(const PatientPage());
    } else {
      EasyLoading.showToast("Log In Failed", maskType: EasyLoadingMaskType.black);
    }
  }

  void clearFields() {
    logId.text = "";
    logPass.text = "";
    crAdress.text = "";
    crBirth.text = "";
    crGender.text = "";
    crId.text = "";
    crName.text = "";
    crPass.text = "";
    crPhone.text = "";
  }
}
