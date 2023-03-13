//
//  MainPresenter.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 09/03/2023.
//

import Foundation


protocol MainPresenterDelegate {
    init(view: MainVCDelegate)
    func viewDidLoad()
    
}


class MainPresenter: MainPresenterDelegate{
    
    private weak var view: MainVCDelegate?

    required init(view: MainVCDelegate) {
        self.view = view
    }
    
    func viewDidLoad(){
        print("orange")
    }
}
