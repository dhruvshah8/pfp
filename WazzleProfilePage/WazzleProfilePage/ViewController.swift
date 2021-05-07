//
//  ViewController.swift
//  WazzleProfilePage
//
//  Created by Dhruv Shah on 2021-05-06.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    fileprivate let mainTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Profile"
        label.textColor = .darkGray
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    
    fileprivate let name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Dhruv Shah"
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    
    fileprivate let backArrow : UIButton = {
        let button = UIButton()
        let image = UIImage(named: "back")?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor(named: "PrimaryColour")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    fileprivate let editButton : UIButton = {
        let button = UIButton()
        button.setTitle("Edit", for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(UIColor(named: "PrimaryColour"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    fileprivate let profileView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor = .black
        iv.isUserInteractionEnabled = true
        return iv
    }()
    
    
    
    fileprivate let nameTextField : UITextField = {
        let field = UITextField()
        field.font = UIFont.systemFont(ofSize: 20, weight: .light)
        field.placeholder = "name"
        field.textColor = .black
        field.textAlignment = .center
        field.backgroundColor = .clear
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.borderWidth = 1.5
        field.layer.borderColor = UIColor(named: "PrimaryColour")?.cgColor
        field.layer.cornerRadius = 8
        let sv1 = UIView(frame:CGRect(x:0, y:0, width:5, height:10))
        field.leftViewMode = .always
        field.leftView = sv1
        let sv2 = UIView(frame:CGRect(x:0, y:0, width:5, height:10))
        field.rightViewMode = .always
        field.rightView = sv2
        
        return field
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupView()
        
        
    }
    
    
    func setupView(){
        view.backgroundColor = .white
        
        
        
        //back arrow
        view.addSubview(backArrow)
        NSLayoutConstraint.activate([
            backArrow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backArrow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            backArrow.heightAnchor.constraint(equalToConstant: 34),
            backArrow.widthAnchor.constraint(equalToConstant: 44)
        ])
        
        
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            mainTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
        
        
        
        
        //edit button
        view.addSubview(editButton)
        NSLayoutConstraint.activate([
            editButton.widthAnchor.constraint(equalToConstant: 40),
            editButton.heightAnchor.constraint(equalToConstant: 40),
            editButton.centerYAnchor.constraint(equalTo: backArrow.centerYAnchor),
            editButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        editButton.alpha = 1
        
        
        
        view.addSubview(profileView)
        let size:CGFloat = 100
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            profileView.heightAnchor.constraint(equalToConstant: size),
            profileView.widthAnchor.constraint(equalToConstant: size),
            profileView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        ])
        profileView.layer.cornerRadius = size/2
        
        
        //edit button
        view.addSubview(editButton)
        NSLayoutConstraint.activate([
            editButton.widthAnchor.constraint(equalToConstant: 40),
            editButton.heightAnchor.constraint(equalToConstant: 40),
            editButton.centerYAnchor.constraint(equalTo: backArrow.centerYAnchor),
            editButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        editButton.alpha = 1
        
        
        
        
        view.addSubview(nameTextField)
        NSLayoutConstraint.activate([
            nameTextField.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            nameTextField.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 30)
        ])
        
        
    }
    
    
    
}

