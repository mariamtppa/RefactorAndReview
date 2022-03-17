//
//  CustomLabel.swift
//  TrivagoTask
//
//  Created by Mariam Busayo Abdulkareem on 17/03/2022.
//

import UIKit

class CustomLabel: UILabel {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    func setup() {
        self.numberOfLines = 0
        self.setContentHuggingPriority(.defaultHigh, for: .vertical)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func updateLabel(text: String, textProperties: TextProperties) {
        self.font = .systemFont(ofSize: textProperties.returnFontSize(), weight: textProperties.returnFontWeight())
        self.text = text
    }
}
