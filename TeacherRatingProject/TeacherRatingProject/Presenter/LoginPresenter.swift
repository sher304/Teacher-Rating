//
//  LoginPresenter.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 13/03/2023.
//

import Foundation

protocol LoginPresenterDelegate {
    init(view: LoginVCDelegate)
    func viewDidLoad()
    
}


class LoginPresenter: LoginPresenterDelegate{
    
    private weak var view: LoginVCDelegate!
    
    required init(view: LoginVCDelegate){
        self.view = view
    }
    
    func viewDidLoad(){
        print("T")
    }
}
