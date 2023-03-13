//
//  LoginBuilder.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 13/03/2023.
//

import Foundation
import UIKit

class LoginBuilder {
    
    static func build() -> UIViewController{
        let view = LoginVC()
        let presenter = LoginPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
