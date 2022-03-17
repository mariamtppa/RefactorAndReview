//
//  Utilities.swift
//  TrivagoTask
//
//  Created by Mariam Busayo Abdulkareem on 17/03/2022.
//

import UIKit

enum TextProperties {
    
    case header, body
    
    func returnFontSize() -> CGFloat {
        switch self {
        case .header:
            return 16
        case .body:
            return 12
        }
    }
    
    func returnFontWeight() -> UIFont.Weight {
        switch self {
        case .header:
            return .bold
        case .body:
            return .regular
        }
    }
}
