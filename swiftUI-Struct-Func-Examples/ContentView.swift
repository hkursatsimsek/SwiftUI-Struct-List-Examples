//
//  ContentView.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 11.10.2021.
//

import SwiftUI

//Dışarıdan 2 sayı alan ve bu sayıları bölüp sonucu dönen bir fonksiyon yaz. ( Sonuç ondalıklı olacak )
func division(number1: Double, number2: Double) -> Double {
    var result = 0.0
    if number2 != 0 {
        result = number1 / number2
    }
    return Double(result)
}

struct ContentView: View {
    @State var number1 : String = ""
    @State var number2 : String = ""
    @State var result : Double = 0.0
    
    var body: some View {
        VStack{
            TextField("number1", text: $number1)
                .padding()
                .multilineTextAlignment(.center)
            
            TextField("number2", text: $number2)
                .padding()
                .multilineTextAlignment(.center)
            
            Button("Division") {
                if let num1 = Double(number1), let num2 = Double(number2) {
                    result = division(number1: num1, number2: num2)
                }
            }.padding()
            
            Text(String(result))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
