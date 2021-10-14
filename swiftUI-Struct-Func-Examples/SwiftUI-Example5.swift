//
//  SwiftUI-Example5.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 13.10.2021.
//

import SwiftUI

//Dışarıdan 3 sayı alan ve en küçüğünü bana dönen fonksiyon

func sorting(s1: Int, s2: Int, s3:Int) -> Int {
    var sortNumbers = [s1, s2, s3]
    sortNumbers.sort(by: {$1 < $0})
    return sortNumbers[sortNumbers.count-1]
}

struct SwiftUI_Example5: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var num3 = ""
    @State var result = ""
    
    var body: some View {
        VStack{
            TextField("sayi1", text: $num1)
                .padding()
                .keyboardType(.numberPad)
            
            TextField("sayi2", text: $num2)
                .padding()
                .keyboardType(.numberPad)
            
            TextField("sayi3", text: $num3)
                .padding()
                .keyboardType(.numberPad)
            
            Button("Sort") {
                if let num1 = Int(num1), let num2 = Int(num2), let num3 = Int(num3) {
                    result = String(sorting(s1: num1, s2: num2, s3: num3))
                }
            }.padding()
            
            Text(result)
                .padding()
        }
    }
}

struct SwiftUI_Example5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_Example5()
    }
}
