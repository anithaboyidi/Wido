//
//  CheckBox.swift
//  Wido
//
//  Created by wido technologies on 14/06/22.
//

import Foundation
import UIKit

class CheckBox: UIView {
    
    var isChecked = false
    
    let imageView: UIImageView = {
        
        
    let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        imageView.tintColor = .systemYellow
        imageView.image = UIImage(systemName: "checkmark")
        
        return imageView
    }()
    let boxView:UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemYellow.cgColor
        return view
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      
        addSubview(boxView)
        addSubview(imageView)
     
        clipsToBounds = true
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        boxView.frame = CGRect(x: 5, y: 5, width: frame.size.width-14, height:frame.size.width-14)
        imageView.frame = CGRect(x: 0, y: -10, width: frame.size.width, height: frame.size.width)
        
        
    }
    
    public func toggle() {
        self.isChecked = !isChecked
        
        imageView.isHidden = !isChecked
    }
}
