//
//  ProfileVC.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 12/03/2023.
//

import UIKit
import SnapKit

class ProfileVC: UIViewController {
    
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .customDarkGreen
        return view
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var profilePhoto: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.circle")
        image.tintColor = .white
        return image
    }()
    
    private lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sam Smith"
        label.font = .systemFont(ofSize: 35, weight: .heavy)
        label.textColor = .white
        return label
    }()
    
    private lazy var userEmailLabel: UILabel = {
        let label = UILabel()
        label.text = "samsmith@gmail.com"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        return label
    }()
    
    private lazy var forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Поменять E-mail?"
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var semiView: UIView = {
        let view = UIView()
        view.backgroundColor = .tintBeige
        view.layer.cornerRadius = 8
        return view
    }()
    
    private lazy var enterNewPassword: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private lazy var changeImage: UILabel = {
        let label = UILabel()
        label.text = "Изменить фотографию"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private lazy var passwordField: LeftPaddedTextField = {
        let textF = LeftPaddedTextField()
        textF.autocorrectionType = .no
        textF.autocapitalizationType = .none
        textF.placeholder = "Введите e-mail"
        textF.layer.borderWidth = 0.2
        textF.layer.cornerRadius = 13
        return textF
    }()
    
    private lazy var enterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Получить код", for: .normal)
        button.layer.cornerRadius = 13
        button.backgroundColor = .customDarkGreen
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupconstraints()
    }
    
    private func setupconstraints(){
        view.backgroundColor = .tintBeige
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(-50)
            make.top.equalTo(50)
        }
        
        
        mainView.addSubview(cancelButton)
        cancelButton.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.height.width.equalTo(30)
            make.top.equalTo(20)
        }
        
        mainView.addSubview(profilePhoto)
        profilePhoto.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(cancelButton.snp.bottom).offset(22)
            make.height.width.equalTo(60)
        }
        
        mainView.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(profilePhoto.snp.bottom).offset(15)
        }
        
        mainView.addSubview(userEmailLabel)
        userEmailLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(usernameLabel.snp.bottom).offset(7)
        }
        
        mainView.addSubview(changeImage)
        changeImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userEmailLabel.snp.bottom).offset(10)
        }
        
        mainView.addSubview(forgotPasswordLabel)
        forgotPasswordLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(changeImage.snp.bottom).offset(50)
        }
        
        mainView.addSubview(semiView)
        semiView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(145)
            make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(27)
        }
        
        semiView.addSubview(enterNewPassword)
        enterNewPassword.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(20)
        }
        
        semiView.addSubview(passwordField)
        passwordField.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(30)
            make.top.equalTo(enterNewPassword.snp.bottom).offset(9)
        }
        
        semiView.addSubview(enterButton)
        enterButton.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-15)
            make.height.equalTo(30)
            make.bottom.equalTo(-20)
        }
    }
}

