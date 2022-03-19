//
//  FullScreenPlayer.swift
//  HW16
//
//  Created by Александр Петрович on 14.02.2022.
//

import SwiftUI

struct FullScreenPlayer: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    @State private var volumeSlider: Float = 0
    @State var slayderTimer: Timer? = nil
    @State private var curentImageHeight: CGFloat = UIScreen.main.bounds.width/5*3
    @State private var curHeight: CGFloat = UIScreen.main.bounds.height
    
    let fullHeight: CGFloat = UIScreen.main.bounds.height
    let minHeight: CGFloat = UIScreen.main.bounds.height / 2 + 100
    
    let pauseImageHeight: CGFloat = UIScreen.main.bounds.width/5*4
    let playImageHeight: CGFloat = UIScreen.main.bounds.width/5*3
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if playerPresenter.showMaxPlayer {
                VStack{
                    ZStack {
                        Capsule()
                            .foregroundColor(.gray)
                            .frame(width: FullScreenPlayerMetric.capsuleW, height: FullScreenPlayerMetric.capsuleH)
                            .onTapGesture {
                                playerPresenter.showMaxPlayer = false
                            }
                    }
                    .frame(height: FullScreenPlayerMetric.capsuleStackH)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .clear))
                    .gesture(dragGesture)
                    
                    ZStack {
                        VStack {
                            SongCover(curentImageHeight: $curentImageHeight)
                            SongTitleWithTimerSlider()
                            
                            Spacer()
                            PlayerButton(searchText: _searchText, playerPresenter: _playerPresenter, slayderTimer: $slayderTimer, curentImageHeight: $curentImageHeight, curHeight: $curHeight)
                            
                            Spacer()
                            VolomeSlider(volumeSlider: $volumeSlider)
                        }
                    }
                    .frame(maxHeight: .infinity)
                    .padding(.bottom, FullScreenPlayerMetric.bottomPadding)
                }
                .frame(maxHeight: fullHeight)
                .frame(maxWidth: .infinity)
                .background(
                    
                    ZStack{
                        Rectangle()
                            .frame(height: fullHeight)
                            .foregroundColor(.white)
                        Image(searchText.searchResult.image).resizable().blur(radius: FullScreenPlayerMetric.backgroundBlurRadius)
                    }
                        .cornerRadius(FullScreenPlayerMetric.backgroundCornerRadius)
                )
                .transition(.move(edge: .bottom))
            }
        }
        .offset(y: (fullHeight-curHeight))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    
    @State private var prevDrugTranslations = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
        
            .onChanged { val in
                let dragAmount = val.translation.height - prevDrugTranslations.height
                if curHeight <= fullHeight {
                    curHeight -= dragAmount
                    prevDrugTranslations = val.translation
                }
            }
        
            .onEnded { val in
                prevDrugTranslations = .zero
                if curHeight > minHeight {
                    curHeight = UIScreen.main.bounds.height
                } else {
                    playerPresenter.showMaxPlayer = false
                    curHeight = UIScreen.main.bounds.height
                }
            }
    }
}

struct SongCover: View {
    @EnvironmentObject var searchText: SearchText
    @Binding var curentImageHeight: CGFloat
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .foregroundColor(Color(uiColor: .clear))
            Image(searchText.searchResult.image)
                .resizable()
                .frame(width: curentImageHeight, height: curentImageHeight)
                .cornerRadius(FullScreenPlayerMetric.imageCornerRadius)
        }
    }
}

struct SongTitleWithTimerSlider: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text(searchText.searchResult.title)
                        .foregroundColor(.white)
                        .font(.system(size: FullScreenPlayerMetric.titleFontSize, weight: .medium, design: .default))
                    Text(searchText.searchResult.subTitle)
                        .foregroundStyle(Color(uiColor: .systemGray3))
                        .font(.system(size: FullScreenPlayerMetric.subTitleFontSize, weight: .regular, design: .default))
                }
                
                Spacer()
                Button {
                    print("Нажата кнопка")
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.white, Color(uiColor: .systemGray).opacity(FullScreenPlayerMetric.buttonImageOpacity))
                        .font(.title)
                }
            }
            
            Slider(value: $playerPresenter.timerSlider, in: 0...searchText.searchResult.compositionDuration)
                .accentColor(.gray)
            
            HStack{
                Text(timeConverter(time: Int(playerPresenter.timerSlider)))
                Spacer()
                Text("-\(timeConverter(time:Int(abs(playerPresenter.timerSlider - searchText.searchResult.compositionDuration))))")
            }
            .foregroundColor(.white)
            .font(.system(size: FullScreenPlayerMetric.timerFontSize))
        }
        .padding(.horizontal, FullScreenPlayerMetric.timerSliderPadding)
    }
    
    func timeConverter (time: Int) -> String {
        let timeWithoutMilisec = time / 100
        let minutes = Int(timeWithoutMilisec) / 60 % 60
        let seconds = Int(timeWithoutMilisec) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
}

struct PlayerButton: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    @Binding var slayderTimer: Timer?
    @Binding var curentImageHeight: CGFloat
    @Binding var curHeight: CGFloat
    
    let fullHeight: CGFloat = UIScreen.main.bounds.height
    let minHeight: CGFloat = UIScreen.main.bounds.height / 2 + 100
    let pauseImageHeight: CGFloat = UIScreen.main.bounds.width/5*4
    let playImageHeight: CGFloat = UIScreen.main.bounds.width/5*3
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                playerPresenter.timerSlider = 0
            } label: {
                Image(systemName: "backward.fill")
                    .font(.title)
            }
            Spacer()
            Button {
                if playerPresenter.isPlayButtonPressed {
                    withAnimation(.linear(duration: 1)) {
                        self.curentImageHeight = playImageHeight
                    }
                } else {
                    withAnimation(.linear(duration: 1)) {
                        self.curentImageHeight = pauseImageHeight
                    }
                }
                playerPresenter.isPlayButtonPressed.toggle()
                if playerPresenter.isPlayButtonPressed {
                    startTimer()
                } else {
                    stopTimer()
                }
                
            } label: {
                if playerPresenter.isPlayButtonPressed {
                    Image(systemName: "pause.fill")
                } else {
                    Image(systemName: "play.fill")
                }
            }
            .font(.system(size: FullScreenPlayerMetric.playButtonSize))
            Spacer()
            Button {
                playerPresenter.timerSlider = searchText.searchResult.compositionDuration
            } label: {
                Image(systemName: "forward.fill")
                    .font(.title)
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
    
    func startTimer() {
        slayderTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ tempTimer in
            if playerPresenter.timerSlider <= searchText.searchResult.compositionDuration {
                playerPresenter.timerSlider += 1
            } else {
                slayderTimer?.invalidate()
                slayderTimer = nil
                playerPresenter.isPlayButtonPressed = false
            }
        }
    }
    
    func stopTimer() {
        slayderTimer?.invalidate()
        slayderTimer = nil
    }
}

struct VolomeSlider: View {
    @Binding var volumeSlider: Float
    
    var body: some View {
        VStack(spacing: FullScreenPlayerMetric.volumeContrStackSpacing) {
            HStack{
                Image(systemName: "speaker.fill")
                    .font(.system(size: FullScreenPlayerMetric.volumeContrIconSize))
                    .foregroundStyle(Color(uiColor: .systemGray5))
                
                Slider(value: $volumeSlider, in: 0...1, onEditingChanged: { data in
                })
                    .accentColor(.gray)
                
                Image(systemName: "speaker.wave.2.fill")
                    .font(.system(size: FullScreenPlayerMetric.volumeContrIconSize))
                    .foregroundStyle(Color(uiColor: .systemGray5))
            }
            
            HStack{
                Spacer()
                Image(systemName: "quote.bubble")
                Spacer()
                Image(systemName: "airplayaudio")
                Spacer()
                Image(systemName: "list.bullet")
                Spacer()
            }
            .font(.system(size: FullScreenPlayerMetric.tabBarIconSize))
            .foregroundStyle(Color(uiColor: .systemGray3))
        }
    }
}

enum FullScreenPlayerMetric {
    static let capsuleW = 40.0
    static let capsuleH = 6.0
    static let capsuleStackH = 100.0
    
    static let imageCornerRadius = 10.0
    
    static let titleFontSize = 28.0
    static let subTitleFontSize = 22.0
    
    static let buttonImageOpacity = 0.4
    
    static let timerFontSize = 12.0
    static let timerSliderPadding = 30.0
    
    static let playButtonSize = 45.0
    
    static let volumeContrStackSpacing = 20.0
    static let volumeContrIconSize = 12.0
    static let volumeContrVertPadding = 10.0
    static let volumeContrHorizPadding = 30.0
    
    static let tabBarIconSize = 24.0
    
    static let bottomPadding = 35.0
    
    static let backgroundBlurRadius = 50.0
    static let backgroundCornerRadius = 30.0
}
