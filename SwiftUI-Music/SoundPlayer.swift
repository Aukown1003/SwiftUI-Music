//
//  SoundPlayer.swift
//  SwiftUI-Music
//
//  Created by 桑野友輔 on 2023/03/13.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //音楽データの読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    //変数の設定
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            //do ~ try ~ catch で例外処理を書くことが出来る
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
        
    }
    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
    
}
