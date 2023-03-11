//
//  MainVC.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 11/03/2023.
//

import UIKit

import SnapKit

class MainVC: UIViewController {

    private lazy var firstBGView: UIView = {
        let view = UIView()
        view.backgroundColor = .tintBeige
        return view
    }()
    
    private lazy var burgerMenu: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "circle.grid.3x3"), for: .normal)
        button.tintColor = .gray
        return button
    }()
    
    private lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 33")
        return image
    }()
    
    private lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "students")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var profileButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "person.circle"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        button.tintColor = .gray
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupconstraints()
    }
    
    private func setupconstraints(){
        view.backgroundColor = .customDarkGreen
        view.addSubview(firstBGView)
        firstBGView.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
            make.height.equalTo(605)
        }
        
        firstBGView.addSubview(burgerMenu)
        burgerMenu.snp.makeConstraints { make in
            make.height.width.equalTo(35)
            make.leading.equalTo(20)
            make.top.equalTo(firstBGView.safeAreaLayoutGuide).offset(10)
        }
        
        firstBGView.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(burgerMenu)
        }
        
        firstBGView.addSubview(profileButton)
        profileButton.snp.makeConstraints { make in
            make.trailing.equalTo(-20)
            make.centerY.equalTo(logoImage)
            make.height.width.equalTo(35)
        }
        
        firstBGView.addSubview(mainImage)
        mainImage.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(burgerMenu.snp.bottom).offset(25)
            make.height.equalTo(480)
        }
    }
}
