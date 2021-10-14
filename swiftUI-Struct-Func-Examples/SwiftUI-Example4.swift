//
//  SwiftUI-Example4.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 13.10.2021.
//

import SwiftUI

//Dışarıdan bir değer alan bu değer 200 den büyükse %18 ini hesaplayıp dönen, değilse %8 ini hesaplayıp dönen fonksiyon. ( Sonuç ondalıklı olacak )

func hesapla(value: Int) -> Double {
    var result: Double = 1.0
    if value > 200 {
        result = (result*18)/100
    } else {
        result = (result*8)/100
    }
    return result
}

struct SwiftUI_Example4: View {
    @State var number = ""
    @State var result = ""
    
    var body: some View {
        VStack{
            TextField("Value", text: $number)
                .padding()
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            
            Button("Calculate") {
                if let number = Int(number) {
                    result = String(hesapla(value: number))
                }
            }
            .padding()
            
            Text(result)
                .padding()
        }
    }
}

struct SwiftUI_Example4_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_Example4()
    }
}
