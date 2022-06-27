//
//  HomeMenu.swift
//  Puzzle
//
//  Created by Necmettin SOLMAZ on 6.12.2021.
//

import SwiftUI

struct HomeMenu: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: ContentView(rekorSahibi: "yeni")) {
                    Label("Sayılar", systemImage: "123.rectangle")
                }
                NavigationLink(destination: ResimView()){
                    Label{
                        Text("Resimler")
                    } icon: {
                        Image("istanbul").resizable().frame(width: 25, height: 25, alignment: .center)
                    }
                }
            }
        }.navigationBarTitle(Text("YapBoz Oyunu"), displayMode: .automatic)
    }
}

struct HomeMenu_Previews: PreviewProvider {
    static var previews: some View {
        HomeMenu()
    }
}
