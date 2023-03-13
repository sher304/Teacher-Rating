//
//  GetCodeVC.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 11/03/2023.
//
import UIKit
import SnapKit


class GetCodeVC: UIViewController {
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .customDarkGreen
        return view
    }()
    
    private lazy var forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Забыли пароль?"
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
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    private lazy var passwordField: LeftPaddedTextField = {
        let textF = LeftPaddedTextField()
        textF.autocorrectionType = .no
        textF.autocapitalizationType = .none
        textF.placeholder = "Введите пароль"
        textF.layer.borderWidth = 0.2
        textF.layer.cornerRadius = 13
        return textF
    }()
    
    private lazy var enterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Войти", for: .normal)
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
        
        
        mainView.addSubview(forgotPasswordLabel)
        forgotPasswordLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(251)
        }
        
        mainView.addSubview(semiView)
        semiView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(145)
            make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(57)
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


