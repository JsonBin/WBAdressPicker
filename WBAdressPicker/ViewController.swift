//
//  ViewController.swift
//  WBAdressPicker
//
//  Created by Zwb on 16/4/14.
//  Copyright © 2016年 zwb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label=UILabel()
    var array=NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.title="WBAdressPicker"
        
        /*
        *
         
        *    要使用改Picker，需要先导入 plist文件到 项目中， 文件为该项目中的 area.plist 文件
         
        *
         
        *
         
        */
        
        let button=UIButton.init(type: .System)
        button.frame=self.view.bounds
        button.setTitle("点击", forState: .Normal)
        button.addTarget(self, action: #selector(ViewController.click), forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
        
        label.frame=CGRectMake(0, 100, self.view.bounds.size.width, 200)
        label.textColor=UIColor.blackColor()
        label.textAlignment = .Center
        label.font=UIFont.systemFontOfSize(15)
        self.view.addSubview(label)
        
        array=["北京市","北京市","丰台区"]
    }
    
    func click() -> Void {
        // 初始化
        
        let pick = WBAdressPicker.shareInstance
        
        // 设置是否显示区县等，默认为false不显示
        pick.showTown=true
        pick.pickArray=array // 设置第一次加载时需要跳转到相对应的地址
        
        // 选择完成之后回调
        pick.selectAdress { (dressArray) in
            
            self.array=dressArray
            print("选择的地区是: \(dressArray)")
            
            self.label.text="\(dressArray[0])  \(dressArray[1])  \(dressArray[2])"
        }
        // 加载
        pick.show(self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

