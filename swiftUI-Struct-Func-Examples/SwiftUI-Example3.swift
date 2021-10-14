//
//  SwiftUI-Example3.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 13.10.2021.
//

import SwiftUI

//Dışarıdan bir sayı alan ve bu sayılara kadar olan sayıların toplamını dönen fonksiyon. Örneğin dışarıdan 5 yolladığınızda 1+2+3.. Şeklinde hesaplayıp sonucu 15 olarak dönecek

func bunaKadarTopla(sayi: Int) -> String {
    var toplam =  0
    for i in 0..<sayi+1 {
        toplam = toplam + i
    }
    return String(toplam)
}

struct SwiftUI_Example3: View {
    @State var number = ""
    @State var result = ""
    
    var body: some View {
        VStack{
            TextField("Sayi giriniz", text: $number)
                .padding()
                .autocapitalization(.none)
                .multilineTextAlignment(.center)
            
            Button("Topla") {
                if let number = Int(number) {
                    result = bunaKadarTopla(sayi: Int(number))
                }
            }
            .padding()
            
            Text(result)
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

struct SwiftUI_Example3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_Example3()
    }
}
