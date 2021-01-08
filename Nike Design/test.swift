//
//  test.swift
//  Nike Design
//
//  Created by Стас Жингель on 07.01.2021.
//

import SwiftUI

struct Box1 {
    var id: Int
    let title, imageURL: String
    
}
struct test: View {
    let boxes: [Box1] = [
        Box1(id: 1, title: "Zoom Freak 2", imageURL: "1"),
        Box1(id: 2, title: "LeBrone", imageURL: "1"),
        Box1(id: 3, title: "Jordan 'Why not?'", imageURL: "1"),
        Box1(id: 4, title: "Nike Tempo", imageURL: "1"),
        Box1(id: 5, title: "Air Zoom Creative", imageURL: "1")
    ]
    var body: some View {
        NavigationView {
            ScrollView {
            HStack {
               
                
                    BoxView1()
                BoxView1()
                BoxView1()
                
                }
                
            }
            }
    }
}

    struct BoxView1: View {
        var body: some View {
            VStack {
                Image("1")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                Text("Zoom Freak 2")
            }
        }
    }


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
