//
//  ContentView.swift
//  SwiftUI-Music
//
//  Created by 桑野友輔 on 2023/03/13.
//

import SwiftUI

let soundPlayer = SoundPlayer()
struct ContentView: View {
    var body: some View {
        ZStack{
            //背景画像として、imagename"backgroundを指定"
            BackgroundView(imageName: "background")
            
            HStack{
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image("cymbal")
                }
                
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image("guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
