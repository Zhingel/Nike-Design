//
//  ContentView.swift
//  Nike Design
//
//  Created by Стас Жингель on 06.01.2021.
//

import SwiftUI

struct Box {
    var id: Int
    let title, imageURL: String
    
}

struct ContentView: View {
   
    let boxes: [Box] = [
        Box(id: 1, title: "Zoom Freak 2", imageURL: "1"),
        Box(id: 2, title: "LeBrone", imageURL: "2"),
        Box(id: 3, title: "Jordan 'Why not?'", imageURL: "3"),
        Box(id: 4, title: "Nike Tempo", imageURL: "4"),
        Box(id: 5, title: "Air Zoom Creative", imageURL: "5")
    ]
    var body: some View {
       
                
                VStack (spacing: 30) {
                    Image("label")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100.0)
                        .padding(.all, 40.0)
                        
                    
                    tabBar()

                  
                    
                    ZStack {
                        ZStack {
                            
                        }
                        .frame(width: 220.0)
                        .frame(width: 230.0, height: 330.0)
                        .background(Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .shadow(radius: 30)
                        //.rotationEffect(.degrees(-15))
                        .rotation3DEffect(
                            .degrees(10),
                            axis: (x: 0.0, y: -20.0, z: 30.0))
                        .padding(.trailing, -25.0)
                        
                        ZStack {
                            
                        }
                        .frame(width: 220.0)
                        .frame(width: 230.0, height: 330.0)
                        .background(Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .shadow(radius: 5)
                        .rotation3DEffect(
                            .degrees(10),
                            axis: (x: 0.0, y: 10.0, z: -30.0))
                        .padding(.trailing, 15.0)
                        
                        ZStack {
                            Image("shoes1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 220.0)
                                .frame(width: 230.0, height: 330.0)
                                .background(Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .shadow(radius: 10)
                        }
                        
                        
                        
                        
                    }
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Buy Now")
                            .foregroundColor(Color.white)
                    })
                    .frame(width: 172.0, height: 43.0)
                    .background(Color("Color"))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(radius: 10)
                    .padding(.all, 20.0)
                    .offset(y:10)
                    
                   
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                           
                            ForEach(boxes, id: \.id) {
                                box in
                                BoxView(box: box)
                            }
                            
                        }
                        .padding()
                        }
                       
                        
                       
                  
                    
                    
                }
                
    .background(Color("BackGround").edgesIgnoringSafeArea(.all))
                
            }
            
          
        }
        
        
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct tabBar: View {
    @State var show = 0
    var body: some View {
        HStack (alignment:.top, spacing: 40) {
            
            Button(action: {
                self.show = 0
            },
            label: {
                VStack{
                    Text("Hot")
                        .foregroundColor(self.show == 0 ? Color("Color") : Color(#colorLiteral(red: 0.4274509804, green: 0.4470588235, blue: 0.4705882353, alpha: 1)))
                    if self.show == 0 {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor( Color("Color"))
                            .frame(width: 25, height: 3)
                            .offset(y: -10)
                    }
                }
            })
            
            
            Button(action: {
                self.show = 1
            },
            label: {
                VStack{
                    Text("Selling")
                        .foregroundColor(self.show == 1 ? Color("Color") : Color(#colorLiteral(red: 0.4274509804, green: 0.4470588235, blue: 0.4705882353, alpha: 1)))
                    
                    if self.show == 1 {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor( Color("Color"))
                            .frame(width: 40, height: 3)
                            .offset(y: -10)
                        
                    }
                    
                }
                
            })
            
            
            Button(action: {
                self.show = 2
            },
            label: {
                VStack{
                    Text("Pre-sale")
                        .foregroundColor(self.show == 2 ? Color("Color") : Color(#colorLiteral(red: 0.4274509804, green: 0.4470588235, blue: 0.4705882353, alpha: 1)))
                    if self.show == 2 {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor( Color("Color"))
                            .frame(width: 50, height: 3)
                            .offset(y: -10)
                    }
                    
                }
            })
        }
        
    }
    
}

struct BoxView: View {
    let box: Box
   @State private var choose = 0
    var body: some View {
        VStack {
        Button(action: {
            
            self.choose = box.id
            
        }, label: {
            VStack {
                Image(box.imageURL)
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .clipShape(RoundedRectangle(cornerRadius: 35.0))
                    .shadow(radius: 0.5)
                    .overlay(self.choose == box.id ? RoundedRectangle(cornerRadius: 35.0).stroke(Color("Color")) : RoundedRectangle(cornerRadius: 35.0).stroke(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))))
                
               
                Text(box.title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                    
            
            }
        })
            Text("\(self.choose)")
        }
    }
}
