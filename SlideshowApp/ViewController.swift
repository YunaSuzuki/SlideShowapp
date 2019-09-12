//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 鈴木裕奈 on 2019/09/10.
//  Copyright © 2019 Yuna Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageIndex = 0
//    let img1 = UIImage(named:"1.png")!
//    let img2 = UIImage(named:"2.png")!
//    let img3 = UIImage(named:"3.png")!
    
    //表示する画像の配列定義
    let images: [UIImage] = [UIImage(named:"1.png")!, UIImage(named:"2.png")!, UIImage(named:"3.png")!]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    //進むボタンを押した時の処理
    @IBAction func next(_ sender: Any) {
        imageView.image = images[imageIndex]
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
    }
    
    //戻るボタンを押した時の処理
    @IBAction func back(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
    }
    
    //再生・停止ボタンを押した時の処理
    @IBAction func start_pause(_ sender: Any) {
    }
}

