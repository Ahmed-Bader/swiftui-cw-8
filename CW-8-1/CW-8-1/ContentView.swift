//
//  ContentView.swift
//  CW-8-1
//
//  Created by Ahmed Alkhuder on 29/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var counter = [0, 0, 0]
    var thekr = ["استغفر الله العظيم", "سبحان الله العظيم", "الحمدللة"]
    var body: some View {
        VStack(alignment: .trailing){
            thekerbutton(counter: $counter[0], thekr: thekr[0])
            thekerbutton(counter: $counter[1], thekr: thekr[1])
            thekerbutton(counter: $counter[2], thekr: thekr[2])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct thekerbutton: View {
    @Binding var counter : Int
    let thekr : String
    
    var body: some View {
        HStack{
            Text(thekr)
            Button(action: {counter += 1}, label: {
                Text("\(counter)")
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .padding()
            })
        }
    }
}
