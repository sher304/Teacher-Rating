//
//  MainVC.swift
//  TeacherRatingProject
//
//  Created by Шермат Эшеров on 11/03/2023.
//

import UIKit
import Hero
import SnapKit

protocol MainVCDelegate: AnyObject {
    
}



class MainVC: UIViewController {
    
    var presenter: MainPresenterDelegate!
    
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
    
    private lazy var profileButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "person.circle"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        button.tintColor = .gray
        button.addTarget(self, action: #selector(profileDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "students")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    
    private lazy var conatinerOfDetailView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 14
        view.alpha = 0
        return view
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(dismissTapped), for: .touchUpInside)
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
        presenter.viewDidLoad()
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
        
        view.addSubview(conatinerOfDetailView)
        conatinerOfDetailView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(301)
            make.top.equalTo(120)
        }
        
        conatinerOfDetailView.addSubview(cancelButton)
        cancelButton.snp.makeConstraints { make in
            make.leading.equalTo(7)
            make.top.equalTo(10)
            make.height.width.equalTo(25)
        }
        
        conatinerOfDetailView.addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.top.equalTo(cancelButton.snp.bottom).offset(15)
            make.height.width.equalTo(30)
        }
        
        conatinerOfDetailView.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.leading.equalTo(profileImage.snp.trailing).offset(5)
            make.centerY.equalTo(profileImage)
        }
        
        conatinerOfDetailView.addSubview(useremailLabel)
        useremailLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(5)
            make.leading.equalTo(usernameLabel)
        }
        
        conatinerOfDetailView.addSubview(controlAccount)
        controlAccount.snp.makeConstraints { make in
            make.leading.equalTo(50)
            make.trailing.equalTo(-50)
            make.height.equalTo(30)
            make.top.equalTo(useremailLabel.snp.bottom).offset(27)
        }
        
        conatinerOfDetailView.addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
            make.top.equalTo(controlAccount.snp.bottom).offset(85)
        }
        
        conatinerOfDetailView.addSubview(leaveLabel)
        leaveLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(lineView.snp.bottom).offset(13)
        }
    }
    
    @objc func profileDidTapped(){
        dateFieldAnimationOpen()
    }
    
    @objc func dismissTapped(){
        let positionY = conatinerOfDetailView.frame.origin.y + 20
        let positionX = conatinerOfDetailView.frame.origin.x
        let height = conatinerOfDetailView.frame.height
        let width = conatinerOfDetailView.frame.width
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseIn]) {
            self.conatinerOfDetailView.alpha = 0
            self.conatinerOfDetailView.frame = CGRect(x: positionX, y: positionY, width: width, height: height)
        } completion: { _ in }
    }
    
    func dateFieldAnimationOpen(){
        let positionY = conatinerOfDetailView.frame.origin.y - 20
        let positionX = conatinerOfDetailView.frame.origin.x
        let height = conatinerOfDetailView.frame.height
        let width = conatinerOfDetailView.frame.width
        
        UIView.animate(withDuration: 0.4, delay: 0.0, options: [.curveEaseIn]) {
            self.conatinerOfDetailView.alpha = 1
            self.conatinerOfDetailView.frame = CGRect(x: positionX, y: positionY, width: width, height: height)
        } completion: { _ in }    }
    
}

extension MainVC: MainVCDelegate{
    
}
