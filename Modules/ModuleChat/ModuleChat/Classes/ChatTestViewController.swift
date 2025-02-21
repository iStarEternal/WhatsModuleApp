//
//  AccountTestViewController.swift
//  ModuleAccount
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import SnapKit

import ModuleAccountInterface
import ModuleChatInterface
import ModuleMomentInterface

class ChatTestViewController: UIViewController {
    
    private lazy var askAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ask Account Module", for: .normal)
        button.addTarget(self, action: #selector(actionAskAccount), for: .touchUpInside)
        return button
    }()
    
    private lazy var askChatButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ask Chat Module", for: .normal)
        button.addTarget(self, action: #selector(actionAskChat), for: .touchUpInside)
        return button
    }()
    
    private lazy var askMomentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ask Moment Module", for: .normal)
        button.addTarget(self, action: #selector(actionAskMoment), for: .touchUpInside)
        return button
    }()
    
    private lazy var toAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("To Account Module", for: .normal)
        button.addTarget(self, action: #selector(actionToAccount), for: .touchUpInside)
        return button
    }()
    
    private lazy var toChatButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("To Chat Module", for: .normal)
        button.addTarget(self, action: #selector(actionToChat), for: .touchUpInside)
        return button
    }()
    
    private lazy var toMomentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("To Moment Module", for: .normal)
        button.addTarget(self, action: #selector(actionToMoment), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = type(of: self).description().components(separatedBy: ".").first
        
        view.backgroundColor = .white
        
        view.addSubview(askAccountButton)
        view.addSubview(askChatButton)
        view.addSubview(askMomentButton)
        
        view.addSubview(toAccountButton)
        view.addSubview(toChatButton)
        view.addSubview(toMomentButton)
        
        askAccountButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(16)
            make.leading.equalToSuperview().inset(16)
        }
        
        askChatButton.snp.makeConstraints { make in
            make.top.equalTo(askAccountButton.snp.bottom).offset(16)
            make.leading.equalToSuperview().inset(16)
        }
        
        askMomentButton.snp.makeConstraints { make in
            make.top.equalTo(askChatButton.snp.bottom).offset(16)
            make.leading.equalToSuperview().inset(16)
        }
        
        toAccountButton.snp.makeConstraints { make in
            make.top.equalTo(askMomentButton.snp.bottom).offset(32)
            make.leading.equalToSuperview().inset(16)
        }
        
        toChatButton.snp.makeConstraints { make in
            make.top.equalTo(toAccountButton.snp.bottom).offset(16)
            make.leading.equalToSuperview().inset(16)
        }
        
        toMomentButton.snp.makeConstraints { make in
            make.top.equalTo(toChatButton.snp.bottom).offset(16)
            make.leading.equalToSuperview().inset(16)
        }
    }
    
    @objc func actionAskAccount() {
        mModuleAccount.askAccount()
    }
    
    @objc func actionAskChat() {
        mModuleChat.askChat()
    }
    
    @objc func actionAskMoment() {
        mModuleMoment.askMoment()
    }
    
    @objc func actionToAccount() {
        mModuleAccount.toAcccountTestPage(from: self)
    }
    
    @objc func actionToChat() {
        mModuleChat.toChatTestPage(from: self)
    }
    
    @objc func actionToMoment() {
        mModuleMoment.toMomentTestPage(from: self)
    }
}
