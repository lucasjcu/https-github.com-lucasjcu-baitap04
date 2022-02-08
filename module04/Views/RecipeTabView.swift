//
//  HomeView.swift
//  module04
//
//  Created by Lucas Nguyen on 07/02/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            RecipeFeaturedView()
                .tabItem{
                    VStack{
                        Text("Trang chủ")
                        Image(systemName: "house")
                    }
                }
            RecipeListView()
                .tabItem{
                    VStack{
                        Text("Danh sách")
                        Image(systemName: "list.bullet")
                    }
                }
        }.environmentObject(RecipeModel())

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
