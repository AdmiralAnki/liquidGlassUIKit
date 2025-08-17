//
//  ChatSummaryEmptyStateView.swift
//  liquidGlassUIKit
//
//  Created by Ankith K on 07/08/25.
//


//
//  ChatSummaryEmptyStateView.swift
//  Sandes
//
//  Created by Ankith K on 07/08/25.
//  Copyright © 2025 NIC. All rights reserved.
//

import UIKit

class ChatSummaryEmptyStateView: UIView {

    let firstImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "sun.min")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let secondImage:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "sun.max")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
            label.numberOfLines = 0
            label.textColor = .black
            label.text = "No messages yet!"
            label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .cyan
            return label
        }()

        let subtitleLabel: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
            label.textColor = .lightGray
            label.numberOfLines = 3
//            label.backgroundColor = .purple
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Send private messages, photos and documents to a friend or group."
            return label
        }()
    
    
    let stackView:UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 10
        return stackView
    }()
    
  
    let chatListEmpty:Bool
        
    override convenience init(frame: CGRect) {
        self.init(chatListEmpty: true)
    }
        
    convenience required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init(chatListEmpty:Bool){
        self.chatListEmpty = chatListEmpty
        super.init(frame: .zero)
        
        setupView()
    }
    
    func setupView(){
        stackView.addArrangedSubview(firstImage)
        stackView.addArrangedSubview(secondImage)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)
        stackView.setCustomSpacing(35, after: secondImage)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 50),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -50),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50),
            stackView.heightAnchor.constraint(equalTo: widthAnchor, constant: 1.5)
        ])
        
        
    }
    
    func setupImageStack(){
        
    }
    
    func setupTextStack(){
//        stackView
        
    }
    
    
}

@available(iOS 17.0, * )
#Preview{
    ChatSummaryEmptyStateView(frame: CGRect(x: 0, y: 0, width: 300, height: 800))
}
