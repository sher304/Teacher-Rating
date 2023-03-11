//
//  LeftPaddedTF.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 11/03/2023.
//

import Foundation
import UIKit

//UITextField : override textRect, editingRect
class LeftPaddedTextField: UITextField {

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }

}
