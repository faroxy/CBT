//
//  situation.swift
//  CBT
//
//  Created by nakagawakeita on 2016/04/17.
//  Copyright © 2016年 continue.Ltd. All rights reserved.
//

import UIKit
import QuartzCore


class situation: UIViewController {
    

    @IBOutlet weak var situation: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //situation.text = "a\nb\nc\nd"
        //situation.backgroundColor = UIColor.grayColor()
        situation.layer.masksToBounds = true
        situation.layer.cornerRadius = 10.0
        situation.layer.borderWidth = 1
        situation.layer.borderColor = UIColor.blueColor().CGColor
        
        //完了ボタン
        let kbToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        kbToolBar.barStyle = UIBarStyle.Default  // スタイルを設定
        
        kbToolBar.sizeToFit()  // 画面幅に合わせてサイズを変更
        
        // スペーサー
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: self, action: nil)
        
        // 閉じるボタン
        let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: "commitButtonTapped")
        
        
        kbToolBar.items = [spacer, commitButton]
        
        
        situation.inputAccessoryView = kbToolBar
        //完了ボタン
        
    }
    
    
    func commitButtonTapped (){
        self.view.endEditing(true)
    }
    
    
}

