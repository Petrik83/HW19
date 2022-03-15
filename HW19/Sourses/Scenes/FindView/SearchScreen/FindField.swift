////
////  FindField.swift
////  HW16
////
////  Created by Aliaksandr Piatrovich on 2.02.22.
////
//
//import SwiftUI
//
//struct FindField: View {
//    
//    var array = [String]()
//    @EnvironmentObject var searchText: SearchText
//    @Binding var showCancelButton: Bool
//    @EnvironmentObject var picker: PickerChoise
//    @EnvironmentObject var playerPresenter: PlayerPresenter
//    
//    var body: some View {
//        VStack {
//            HStack {
//                HStack {
//                    Image(systemName: "magnifyingglass")
//                    
//                    TextField(picker.pickerSelection, text: $searchText.searchText, onEditingChanged: { isEditing in
//                        self.showCancelButton = true
//                    }, onCommit: {
//                        print("onCommit")
//                    }).foregroundColor(.primary)
//                    
//                    Button(action: {
//                        self.searchText.searchText = ""
//                    }) {
//                        Image(systemName: "xmark.circle.fill").opacity(searchText.searchText == "" ? 0 : 1)
//                    }
//                }
//                .padding(EdgeInsets(top: FindFieldMetric.paddingTop,
//                                    leading: FindFieldMetric.paddingLeading,
//                                    bottom: FindFieldMetric.paddingBottom,
//                                    trailing: FindFieldMetric.paddingTrailing))
//                .foregroundColor(.secondary)
//                .background(Color(.secondarySystemBackground))
//                .cornerRadius(FindFieldMetric.cornerRadius)
//                .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)) { _ in
//                    playerPresenter.showPlayerView = false
//                }
//                .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)) { _ in
//                    playerPresenter.showPlayerView = true
//                }
//                
//                if showCancelButton  {
//                    Button("Отмена") {
//                        UIApplication.shared.endEditing(true)
//                        self.searchText.searchText = ""
//                        self.showCancelButton = false
//                    }
//                    .foregroundColor(Color(.systemRed))
//                }
//            }
//            .padding(.horizontal, FindFieldMetric.paddingHorizontal)
//            .navigationBarHidden(showCancelButton)
//        }
//    }
//}
//
//enum FindFieldMetric {
//    static let cornerRadius = 10.0
//    static let paddingTop = 8.0
//    static let paddingLeading = 6.0
//    static let paddingBottom = 8.0
//    static let paddingTrailing = 6.0
//
//    static let paddingHorizontal = 20.0
//}
//
//extension UIApplication {
//    func endEditing(_ force: Bool) {
//        self.windows
//            .filter{$0.isKeyWindow}
//            .first?
//            .endEditing(force)
//    }
//}
//
