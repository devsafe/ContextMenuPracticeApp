//
//  ContentView.swift
//  ContextMenuPracticeApp
//
//  Created by Сахар Кубический on 11.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("image")
            .resizable()
            .frame(height: 300)
            .cornerRadius(30)
            .padding()
            .contextMenu(ContextMenu(menuItems: {
                VStack{
                    Button(action: {
                        print("Copy tapped")
                    }) {
                        HStack {
                            Image(systemName: "doc.on.doc")
                            Text("Copy")
                        }
                    }
                    Button(action: {
                        print("Share tapped")
                    }) {
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                            Text("Share")
                        }
                    }
                }
            }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
