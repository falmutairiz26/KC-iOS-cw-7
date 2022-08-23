//
//  StudentsDetails .swift
//  cw 7 student info
//
//  Created by Fatemah Almutairi on 17/08/2022.
//

import Foundation

struct StudentsDetailsModel: Identifiable{
    let id = UUID()
    var fullname : String
    var year : String
    var aage : String
    var inclass : String
}
var Dana = StudentsDetailsModel(fullname: "Dana Al-Otaibi" , year: "2005", aage: "16", inclass: "11")
var Fatemah = StudentsDetailsModel(fullname: "Fatemah Al-Mutairi" , year: "2006", aage: "16", inclass: "11")
var Noor = StudentsDetailsModel(fullname: "Noor Al-Shalahi" , year: "2008", aage: "14", inclass: "9")
var Renad = StudentsDetailsModel(fullname: "Renad AL-Mutairi" , year: "2006", aage: "16", inclass: "11")
var Rawan = StudentsDetailsModel(fullname: "Rawan Al-Shimarie" , year: "2006", aage: "16", inclass: "11")
var Sarah = StudentsDetailsModel(fullname: "Sarah Al-Harbi" , year: "2008", aage: "14", inclass: "10")
var Muneera = StudentsDetailsModel(fullname: "Muneera Al-Ajmi" , year: "2010", aage: "12", inclass: "7")

var students = [Fatemah, Dana, Renad, Rawan, Sarah, Noor, Muneera]
