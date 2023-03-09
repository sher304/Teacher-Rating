//
//  ViewController.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 09/03/2023.
//

import UIKit
import SnapKit

class MainVC: UIViewController {
    
    private lazy var beigeBGImage: UIImageView = {
        let imageV = UIImageView()
        imageV.image = UIImage(named: "Vector 42")
        return imageV
    }()
    
    private lazy var logoImage: UIImageView = {
        let imageV = UIImageView()
        imageV.image = UIImage(named: "Group 33")
        return imageV
    }()
    
    private lazy var greetingText: UILabel = {
        let label = UILabel()
        label.text = "Рады видеть Вас снова!"
        label.font = .systemFont(ofSize: 19)
        label.textColor = UIColor.customGreen
        return label
    }()
    
    private lazy var mainInfromV: UIView = {
        let view = UIView()
        view.backgroundColor = .tintBeige
        view.layer.cornerRadius = 8
        return view
    }()
    
    private lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Имя Пользователя"
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var userNameField: UITextField = {
        let textF = UITextField()
        textF.layer.cornerRadius = 8
        textF.layer.borderColor = UIColor.black.cgColor
        textF.layer.borderWidth = 0.2
        textF.autocorrectionType = .no
        textF.autocapitalizationType = .none
        return textF
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Пароль"
        return label
    }()
    
    private lazy var passwordField: UITextField = {
        let textF = UITextField()
        textF.layer.cornerRadius = 8
        textF.layer.borderColor = UIColor.black.cgColor
        textF.layer.borderWidth = 0.2
        textF.autocorrectionType = .no
        textF.autocapitalizationType = .none
        return textF
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .customDarkGreen
        button.setTitle("Войти", for: .normal)
        button.layer.cornerRadius = 8
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private lazy var registrationButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Зарегистрироваться", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupconstraints()
    }
    
    private func setupconstraints(){
        view.backgroundColor = .customDarkGreen
        
        view.addSubview(beigeBGImage)
        beigeBGImage.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(293)
        }
        
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(57)
            
        }
        
        view.addSubview(greetingText)
        greetingText.snp.makeConstraints { make in
            make.leading.equalTo(logoImage.snp.leading)
            make.top.equalTo(logoImage.snp.bottom).offset(10)
        }
        
        view.addSubview(mainInfromV)
        mainInfromV.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(greetingText.snp.bottom).offset(10)
            make.height.equalTo(623)
        }
        
        mainInfromV.addSubview(userNameLabel)
        userNameLabel.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(20)
        }
        
        mainInfromV.addSubview(userNameField)
        userNameField.snp.makeConstraints { make in
            make.leading.equalTo(userNameLabel.snp.leading)
            make.trailing.equalTo(-20)
            make.height.equalTo(50)
            make.top.equalTo(userNameLabel.snp.bottom).offset(3)
        }
        
        mainInfromV.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.leading.equalTo(userNameLabel.snp.leading)
            make.top.equalTo(userNameField.snp.bottom).offset(36)
        }
        
        mainInfromV.addSubview(passwordField)
        passwordField.snp.makeConstraints { make in
            make.leading.equalTo(passwordLabel.snp.leading)
            make.trailing.equalTo(-20)
            make.height.equalTo(50)
            make.top.equalTo(passwordLabel.snp.bottom).offset(3)
        }
        
        mainInfromV.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(passwordField.snp.bottom).offset(60)
            make.height.equalTo(50)
        }
        
        view.addSubview(registrationButton)
        registrationButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(mainInfromV.snp.bottom).offset(27)
        }
        
    }
    
}


