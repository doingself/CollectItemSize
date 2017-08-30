//
//  TextCollectionViewCell.swift
//  CollectItemSize
//
//  Created by zjkj on 2017/8/30.
//  Copyright © 2017年 zhijiankeji. All rights reserved.
//

import UIKit

class TextCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lab.numberOfLines = 0
    }
    
    func setData(data: String?){
        lab.text = data
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        
        self.setNeedsLayout()
        self.layoutIfNeeded()
        
        let size = self.contentView.systemLayoutSizeFitting(layoutAttributes.size)
        
        var newFrame = layoutAttributes.frame
        newFrame.size.height = size.height
        newFrame.size.width = UIScreen.main.bounds.size.width-3
        layoutAttributes.frame = newFrame
        return layoutAttributes
    }

}
