//
//  ContentView.swift
//  HW19
//
//  Created by Александр Петрович on 10.03.2022.
//

import SwiftUI

class PickerChoise: ObservableObject {
    @Published var pickerSelection = "Apple Music"
}

struct ContentView: View {
    @StateObject var picker = PickerChoise()
    
    @State var selection = Set<UUID>()
    @State var shouldEditViewAppiar = false
    @State var showPlayer: Bool? = true
    @State var queryString = ""
    
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                NavigationView {
                    screenSelection(editViewAppiar: shouldEditViewAppiar)
                        .navigationTitle("Медиатека")
                        .navigationBarItems(trailing:
                                                Button(action: {
                            shouldEditViewAppiar.toggle()
                        }, label: {
                            switch shouldEditViewAppiar {
                            case true:
                                Text("Готово")
                            case false:
                                Text("Править")
                            }
                        })
                                                .foregroundColor(.red))
                }
                .tabItem {
                    Image("music_albums_fill 2")
                        .renderingMode(.template)
                    Text("Медиатека")
                }
                
                NavigationView{
                    RadioView()
                        .navigationTitle("Радио")
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                
                FindViewControllerSUI(showPlayer: $showPlayer)
                    .ignoresSafeArea(.all)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            
            if showPlayer != nil && showPlayer! {
                PlayerView()
                    .padding(.bottom, Metric.playerViewPadding)
            }
            
            FullScreenPlayer()
        }
    }
    
    func screenSelection(editViewAppiar: Bool) -> AnyView {
        switch editViewAppiar {
        case true:
            return AnyView(ListView(selection: $selection))
        case false:
            return AnyView(MediatecaView())
        }
    }
}


enum Metric {
    static let playerViewPadding = 45.0
}
