//
//  MainBuilder.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 13/03/2023.
//

import Foundation
import UIKit

class MainBuilder {
    
    static func build() -> UIViewController{
        let vc = MainVC()
        let presenter = MainPresenter(view: vc)
        vc.presenter = presenter
        return vc
    }
}
