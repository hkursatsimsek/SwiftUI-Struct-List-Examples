//
//  WebUser.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 13.10.2021.
//

import Foundation

struct WebUser {
    var id = UUID()
    var name: String
    var surname: String
    var birthDate: String
    var credits: Int
}


extension Date {
    init(_ dateString:String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "dd/MM/yyyy"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        let date = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:date)
    }
}
