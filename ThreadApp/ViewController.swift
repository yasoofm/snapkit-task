//
//  ViewController.swift
//  ThreadApp
//
//  Created by yousef mandani on 27/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let usernameLabel = UILabel()
    let subnameLabel = UILabel()
    let bioLabel = UILabel()
    let verifiedImageView = UIImageView()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(profileImageView)
        view.addSubview(usernameLabel)
        view.addSubview(subnameLabel)
        view.addSubview(bioLabel)
        view.addSubview(verifiedImageView)
        view.addSubview(button)
        
        verifiedImageView.image = UIImage(named: "verified")
        
        profileImageView.image = UIImage(named: "codedlogo")
        profileImageView.layer.cornerRadius = 75/2
        profileImageView.clipsToBounds = true
        
        usernameLabel.textColor = .white
        subnameLabel.textColor = .white
        bioLabel.textColor = .white
        
        usernameLabel.font = .systemFont(ofSize: 30, weight: .bold)
        
        bioLabel.numberOfLines = 0
        
        button.backgroundColor = UIColor(red: 10, green: 10, blue: 10, alpha: 0.01)
        button.setTitle("threads.net", for: .normal)
        button.setTitleColor(UIColor(red: 30, green: 30, blue: 30, alpha: 0.01), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        
        usernameLabel.text = "CODED"
        subnameLabel.text = "joincoded"
        bioLabel.text = "Create a user interface that includes a profile image, a username, a name label, and a bio section. Incorporate a verification mark as a bonus element."
        
        profileImageView.snp.makeConstraints { make in
            make.height.width.equalTo(75)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        usernameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalTo(profileImageView.snp.centerY)
        }
        
        subnameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(usernameLabel.snp.bottom).offset(10)
        }
        
        bioLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(subnameLabel.snp.bottom).offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        verifiedImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(55)
            make.trailing.equalToSuperview().offset(-70)
            make.height.width.equalTo(20)
        }
        
        button.snp.makeConstraints { make in
            make.leading.equalTo(subnameLabel.snp.trailing).offset(5)
            make.centerY.equalTo(subnameLabel.snp.centerY)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
    }

}

