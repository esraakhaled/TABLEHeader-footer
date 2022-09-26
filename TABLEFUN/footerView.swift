//
//  footerView.swift
//  TABLEFUN
//
//  Created by Esraa Khaled   on 04/08/2022.
//

import Foundation
import UIKit

class footerView: UIView{
    
    @IBOutlet var contentView: UIView!
    override init(frame: CGRect) {
       super.init(frame: frame)
       commonInit()
   }

   required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       commonInit()
   }

   // important!
   override var intrinsicContentSize: CGSize {
       return CGSize(width: UIView.noIntrinsicMetric, height: 104)
   }

   private func commonInit() {
       let bundle = Bundle(for: footerView.self)
       bundle.loadNibNamed("FooterView", owner: self, options: nil)
       addSubview(contentView)
       
       contentView.translatesAutoresizingMaskIntoConstraints = false
       contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
       contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
       contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
       contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
   }
   }

