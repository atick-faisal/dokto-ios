//
//  DoctorSignUpViewModel.swift
//  Dokto
//
//  Created by Rupak on 11/29/21.
//

import UIKit

class DoctorSignUpViewModel {
    
}

//MARK: Request related methods
extension DoctorSignUpViewModel {
    
    func signUp(with headers: [String:String], completion: @escaping(StateListDetails?, RMErrorModel?) -> ()) {
        let request = RMRequestModel()
        request.path = Constants.Api.Auth.Doctor.registration
        request.headers = headers
        request.method = .post
        if let object = DataManager.shared.doctorSignUpRequestDetails?.asDictionary() {
            request.body = object
        }
        
        RequestManager.request(request: request, type: StateListDetails.self) { response, error in
            if let object = response.first {
                completion(object, nil)
            } else {
                completion(nil, error)
            }
        }
    }
}

//MARK: Resource related
extension DoctorSignUpViewModel {
    
    func getSpecialityList() -> [String] {
        let specialityList = ["Any Speciality",
                              "Allergy Specialist",
                              "Andrology",
                              "Anesthesiologist/Chronic Pain Specialist",
                              "Anesthesiology",
                              "Audiology",
                              "Ayurveda Specialist",
                              "Bariatric Surgery",
                              "Cardiology",
                              "Cardiothoracic Surgery",
                              "Child Health",
                              "Childbirth Educator",
                              "Chiropractor",
                              "Clinical Genetics",
                              "Community Medicine",
                              "Cosmetology",
                              "Critical Care Physician",
                              "Dentistry",
                              "Dermatology",
                              "Diabetology",
                              "Dietician",
                              "Endocrinology",
                              "Endodontist",
                              "Family Physician",
                              "Fetal Medicine",
                              "Fitness Expert",
                              "Forensic Medicine",
                              "General Medicine",
                              "General Practitioner",
                              "General Surgery",
                              "Geriatrics",
                              "Hair Transplant Surgeon",
                              "Hematology",
                              "HIV/AIDS Specialist",
                              "Homeopathy",
                              "Human Anatomy Specialist",
                              "Infectious Diseases",
                              "Infertility",
                              "Integrative Medicine",
                              "Internal Medicine",
                              "Interventional Radiology",
                              "Lactation Counselor",
                              "Maxillofacial Prosthodontist",
                              "Medical Gastroenterology",
                              "Medical Oncologist",
                              "Medical Oncology",
                              "Metabolic Surgery",
                              "Microbiology",
                              "Naturopathy",
                              "Nephrology",
                              "Neuro Surgery",
                              "Neurology",
                              "Nuclear Medicine",
                              "Nutritionist",
                              "Obstetrics And Gynaecology",
                              "Occupational Therapy",
                              "Ophthalmology (Eye Care)",
                              "Oral And Maxillofacial Surgery",
                              "Oral Implantologist",
                              "Orthodontist",
                              "Orthopedics And Traumatology",
                              "Osteopathy Specialist",
                              "Otolaryngology (E.N.T)",
                              "Paediatric Dentistry",
                              "Paediatric Surgery",
                              "Paediatrics",
                              "Pain Medicine",
                              "Pathology",
                              "Pediatric Allergy/Asthma Specialist",
                              "Pediatric Cardiology",
                              "Periodontist",
                              "Pharmacology",
                              "Physiotherapy",
                              "Plastic Surgery – Reconstructive And Cosmetic",
                              "Preventive Medicine",
                              "Psychiatry",
                              "Psychologist/ Counsellor",
                              "Psychotherapy",
                              "Pulmonology (Asthma Doctors)",
                              "Radiation Oncologist",
                              "Radiation Oncology",
                              "Radiodiagnosis",
                              "Radiology",
                              "Radiotherapy",
                              "Rheumatology",
                              "Sexology",
                              "Siddha Medicine",
                              "Sleep Medicine",
                              "Sonologist",
                              "Speech Therapist",
                              "Spine Health",
                              "Spine Surgery",
                              "Stem Cell Therapy",
                              "Surgeon",
                              "Surgical Gastroenterology",
                              "Surgical Oncology",
                              "Test Cancer Type",
                              "Toxicology",
                              "Unani Medicine",
                              "Urology",
                              "Vascular Surgery",
                              "Venereology",
                              "Wellness Medicine",
                              "Yoga",
                              "Other"]
        return specialityList
    }
}
