//
//  PlayerView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct PlayerView: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: PlayerViewMetric.rectangleHeight)
                .foregroundColor(Color.init(UIColor.systemBackground))
                .opacity(PlayerViewMetric.rectangleOpacity)
                .blur(radius: PlayerViewMetric.rectangleBlur)
                .onTapGesture {
                    playerPresenter.showMaxPlayer = true
                }
            
            HStack {
                Image(searchText.searchResult.image)
                    .resizable()
                    .cornerRadius(PlayerViewMetric.cornerRadius)
                    .shadow(radius: PlayerViewMetric.shadowRadius)
                    .padding(.all, PlayerViewMetric.imagePadding)
                    .frame(width: PlayerViewMetric.imageSize, height: PlayerViewMetric.imageSize)
                Text(searchText.searchResult.title)
                Spacer()
                Button {
                    print("play")
                } label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.primary)
                }
                .padding(.trailing, PlayerViewMetric.buttonPadding)
                Button {
                    print("forward")
                } label: {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.primary)
                }
                .padding(.trailing)
            }
            .frame(height: PlayerViewMetric.hStackHeight)
        }
    }
}

enum PlayerViewMetric {
    static let rectangleHeight = 90.0
    static let rectangleOpacity = 0.95
    static let rectangleBlur = 3.0
    
    static let imagePadding = 20.0
    static let imageSize = 100.0
    static let cornerRadius = 8.0
    static let shadowRadius = 8.0
    
    static let buttonPadding = 6.0
    
    static let hStackHeight = 70.0
}
