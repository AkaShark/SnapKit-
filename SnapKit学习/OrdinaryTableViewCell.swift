//
//  OrdinaryTableViewCell.swift
//  SnapKit学习
//
//  Created by kys-20 on 2018/4/7.
//  Copyright © 2018年 kys-20. All rights reserved.
//

import UIKit

class OrdinaryTableViewCell: UITableViewCell
{
    private var titleImageView: UIImageView?
    private var titleLable: UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   private func setUpUI() -> () {
    titleImageView = UIImageView()
    titleImageView?.backgroundColor = .red
    titleImageView?.layer.cornerRadius = 4
    self.addSubview(titleImageView!)
    titleImageView?.snp.makeConstraints({ (make) in
        make.top.equalTo(self).offset(12)
        make.left.equalTo(self).offset(12)
        make.width.height.equalTo(24)
    })
    
    titleLable = UILabel()
    titleLable?.backgroundColor = .yellow
    titleLable?.font = UIFont.systemFont(ofSize: 15)
//    titleLable?.text = str?
//    if (str != nil) {
//        titleLable?.text = str!
//    }
    titleLable?.text = "holdplace"
    self.addSubview(titleLable!)
    titleLable?.snp.makeConstraints({ (make) in
        make.top.equalTo(self).offset(14)
        make.left.equalTo((titleImageView?.snp.right)!).offset(12)
        make.width.equalTo(120)
        make.height.equalTo(21)
    })
    }
    
    func upDataWithArray(arr:Array<Any>,index:IndexPath) -> () {
        var dataArray: Array? = arr[0] as? Array<String>
        titleLable?.text = dataArray?[index.row]
    }
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
