//
//  DetailProfileVC.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 12/03/2023.
//

import UIKit
import SnapKit

class DetailProfileVC: UIViewController {

    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 14
        return view
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.tintColor = .black
        return button
    }()

    
    private lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.circle")
        image.tintColor = .black
        return image
    }()
    
    private lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "sadyr zhaparov"
        label.font = .systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    private lazy var useremailLabel: UILabel = {
        let label = UILabel()
        label.text = "sadyr.zhaparov@gmail.com"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 10, weight: .regular)
        return label
    }()
    
    private lazy var controlAccount: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Управление аккаунтом", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 14
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)
        return button
    }()
    
    private lazy var leaveLabel: UILabel = {
        let label = UILabel()
        label.text = "Выйти"
        label.font = .systemFont(ofSize: 30, weight: .regular)
        label.isUserInteractionEnabled = true
        return label
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupconstraints()
    }
    
    private func setupconstraints(){
        
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(301)
            make.top.equalTo(120)
        }
        
        containerView.addSubview(cancelButton)
        cancelButton.snp.makeConstraints { make in
            make.leading.equalTo(7)
            make.top.equalTo(10)
            make.height.width.equalTo(25)
        }
        
        containerView.addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(cancelButton.snp.bottom).offset(15)
            make.height.width.equalTo(30)
        }
        
        containerView.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.leading.equalTo(profileImage.snp.trailing).offset(5)
            make.centerY.equalTo(profileImage)
        }
        
        containerView.addSubview(useremailLabel)
        useremailLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(5)
            make.leading.equalTo(usernameLabel)
        }
        
        containerView.addSubview(controlAccount)
        controlAccount.snp.makeConstraints { make in
            make.leading.equalTo(50)
            make.trailing.equalTo(-50)
            make.height.equalTo(30)
            make.top.equalTo(useremailLabel.snp.bottom).offset(27)
        }
        
        containerView.addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
            make.top.equalTo(controlAccount.snp.bottom).offset(85)
        }
        
        containerView.addSubview(leaveLabel)
        leaveLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(lineView.snp.bottom).offset(13)
        }
    }
    
}
