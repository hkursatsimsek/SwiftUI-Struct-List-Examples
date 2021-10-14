//
//  SwiftUI-Example6.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 13.10.2021.
//

import SwiftUI

func getSupplier() -> [Supplier] {
    let supplierList = [
        Supplier(companyName: "Trendyol", contactName: "Alibaba", city: "Wuhan", country: "China"),
        Supplier(companyName: "Hepsiburada", contactName: "Aslı", city: "İstanbul", country: "Turkey"),
        Supplier(companyName: "Wolkswagen", contactName: "Merkel", city: "Hamburg", country: "Deutschland"),
        Supplier(companyName: "Honda", contactName: "Soichiro", city: "Tokyo", country: "Japan"),
        Supplier(companyName: "Volvo", contactName: "Koenigsegg", city: "Göteborg", country: "İsveç"),
        
    ]
    return supplierList
}

func getDate(birthDay: String) -> Date {
    let formatter = DateFormatter()
    formatter.timeZone = .current
    formatter.locale = .current
    formatter.dateFormat = "dd/MM/yyyy"
//    return formatter.string(from: birthDay)
    return formatter.date(from: birthDay)!
}

func getWebUser() -> [WebUser] {
    
    let webUserList = [
        WebUser(name: "Kursat", surname: "Simsek", birthDate: "12/06/1992", credits: 4),
        WebUser(name: "Sefika", surname: "Simsek", birthDate: "12/06/1992", credits: 14),
        WebUser(name: "Dilsat", surname: "Simsek", birthDate: "12/06/1992", credits: 3),
        WebUser(name: "Tugsat", surname: "Simsek", birthDate: "12/06/1992", credits: 13),
        WebUser(name: "Sevinc", surname: "Simsek", birthDate: "12/06/1992", credits: 24),
    ]
    return webUserList
}



struct SwiftUI_Example6: View {
    
    var supplierList: [Supplier] = getSupplier()
    var webUserList: [WebUser] = getWebUser()
    
    var body: some View {
        VStack{
            List(supplierList, id: \.id) { i in
                Text(i.companyName)
            }.padding()
            
            List(webUserList, id: \.id) { user in
                Text(user.name + " " + user.birthDate)
                
            }.padding()
        }
    }
}

struct SwiftUI_Example6_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_Example6()
    }
}
