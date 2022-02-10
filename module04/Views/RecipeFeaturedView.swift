//
//  RecipeFeaturedView.swift
//  module04
//
//  Created by Lucas Nguyen on 08/02/2022.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        VStack{
            Text("Featured")
                .bold()
                .font(.largeTitle)
                .padding()
            GeometryReader{ geo in
                TabView{
                    ForEach(0..<model.recipes.count) { index in
                        if model.recipes[index].featured == true {
                            ZStack {
                                Rectangle().foregroundColor(.white)
                                VStack {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipes[index].name).padding()
                                }
                            }.frame(width: geo.size.width - 40, height: geo.size.height - 150, alignment: .center)
                                .cornerRadius(10)
                                .shadow(color: Color(.sRGB, red:0, green:0, blue:0, opacity:0.5), radius: 10, x: -5, y: 5)
                        }
                    }

                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            VStack(alignment: .leading) {
                Text("Thời gian chế biến")
                Text("Mức độ")
            }.padding()
            
        }
        
       
        
        
    }
    }


struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
