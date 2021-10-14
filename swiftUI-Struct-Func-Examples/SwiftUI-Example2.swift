//
//  SwiftUI-Example2.swift
//  swiftUI-Struct-Func-Examples
//
//  Created by Kürşat Şimşek on 12.10.2021.
//

import SwiftUI

//Dışarıdan iki metin ( string ) alan ve bu metinleri aralarında boşluk kalacak şekilde birleştirip ve büyültüp dönen fonksiyon yaz

func stringCombining(text1: String, text2: String) -> String {
    return (text1 + " " + text2).uppercased()
}

struct SwiftUI_Example2: View {
    @State var text1: String = ""
    @State var text2: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack{
            TextField("Text1", text: $text1)
                .padding()
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            
            TextField("Text2", text: $text2)
                .padding()
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            
            Button("String Combine") {
                result = stringCombining(text1: text1, text2: text2)
            }.padding()
            
            Text(result).padding()
        }
    }
}

struct SwiftUI_Example2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_Example2()
    }
}
