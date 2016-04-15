# WBAdressPicker
Swift 地址选择器


 使用方法
 =======
 
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
        
效果图
=======

![gif](https://github.com/JsonBin/WBAdressPicker/raw/master/picker.gif "全国地址选择器")
