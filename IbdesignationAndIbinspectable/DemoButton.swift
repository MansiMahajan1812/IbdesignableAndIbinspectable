//
//  DemoButton.swift
//  IbdesignationAndIbinspectable
//
//  Created by Mansi Mahajan on 6/20/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

@IBDesignable class DemoButton: UIButton {
    
    
    //Property Observer
    @IBInspectable var cornerRadius: CGFloat = 10{
        
        didSet{
            self.newProperties()
        }
    }
    
    //Property Observer
    @IBInspectable var borderWidth: CGFloat = 5{
        didSet{
            self.newProperties()
        }
    }
    
    //Property Observer
    @IBInspectable var borderColor: UIColor = UIColor.red{
        didSet{
            self.newProperties()
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        newProperties()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        newProperties()
    }
    
    func newProperties(){
        self.layer.cornerRadius = self.cornerRadius
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor.cgColor
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
}

