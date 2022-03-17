//
//  ViewController.swift
//  TrivagoTask
//
//  Created by Mariam Busayo Abdulkareem on 16/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.bounds = view.frame.inset(by: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        return view
    }()
    
    private lazy var headerLabel: UILabel = {
        let label = CustomLabel()
        label.updateLabel(text: "Some Header", textProperties: TextProperties.header)
        return label
    }()
    
    private lazy var bodyLabel: UILabel = {
        let label = CustomLabel()
        label.updateLabel(text: "Some long body", textProperties: TextProperties.body)
        return label
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupView()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(containerView)
        containerView.addSubview(headerLabel)
        containerView.addSubview(bodyLabel)
    }
    
    private func configureConstraints() {
        let viewsConstraints = [
            //container view constraint
            containerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            //header label constraint
            headerLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            
            //body label constraint
            bodyLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            bodyLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 20),
        ]
        NSLayoutConstraint.activate(viewsConstraints)
    }
}
