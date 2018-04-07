//
//  HeadView.swift
//  SnapKit学习
//
//  Created by kys-20 on 2018/4/7.
//  Copyright © 2018年 kys-20. All rights reserved.
//

import UIKit
import SnapKit


class HeadView: UIView
{
   private var headImageView :UIImageView?
   private var nameLable :UILabel?
   private var startImage :UIImageView?
   private var numberLable :UILabel?
   private var sexImage :UIImageView?
   private var arrowImage :UIImageView?
   private var startNumber :Int = 0
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() -> () {
        headImageView = UIImageView()
        headImageView?.backgroundColor = .red
        self.addSubview(headImageView!)
        headImageView?.snp.makeConstraints({ (make) in
            make.left.equalTo(self).offset(12)
            make.top.equalTo(self).offset(16)
            make.size.equalTo(80)
        })
        nameLable = UILabel()
        nameLable?.backgroundColor = .black
        nameLable?.font = UIFont.systemFont(ofSize: 18)
        self.addSubview(nameLable!)
        nameLable?.snp.makeConstraints({ (make) in
            make.left.equalTo((headImageView?.snp.right)!).offset(12)
            make.top.equalTo(self).offset(20)
            make.width.equalTo(92)
            make.height.equalTo(20)
        })
        
        sexImage = UIImageView()
        sexImage?.backgroundColor = .yellow
        self.addSubview(sexImage!)
        
        sexImage?.snp.makeConstraints({ (make) in
            make.left.equalTo((nameLable?.snp.right)!).offset(4)
            make.top.equalTo(self).offset(22)
            make.width.height.equalTo(16)
            
        })
        
        
        for i in 0...startNumber {
            startImage = UIImageView()
            startImage?.backgroundColor = .red
            self.addSubview(startImage!)
            startImage?.snp.makeConstraints({ (make) in
                make.left.equalTo((headImageView?.snp.right)!).offset(12+i*16)
                make.top.equalTo((nameLable?.snp.bottom)!).offset(8)
                make.width.height.equalTo(16)
            })
        }
        
        numberLable = UILabel()
        numberLable?.backgroundColor = .black
        numberLable?.font = UIFont.systemFont(ofSize: 13)
        self.addSubview(numberLable!)
        numberLable?.snp.makeConstraints({ (make) in
            make.left.equalTo((headImageView?.snp.right)!).offset(12)
            make.top.equalTo(self).offset(76)
            make.width.equalTo(120)
            make.height.equalTo(16)
        })
        
        arrowImage = UIImageView()
        arrowImage?.backgroundColor = .red
        self.addSubview(arrowImage!)
        arrowImage?.snp.makeConstraints({ (make) in
            make.left.equalTo(self).offset(349.4)
            make.top.equalTo(self).offset(50.9)
            make.width.equalTo(10.6)
            make.height.equalTo(10.6)
        })
        
        
       
        
        
        
    }
    
}
