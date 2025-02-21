//
//  ModuleChatProtocol.swift
//  ModuleMomentInterface
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import XModuleCore

public protocol ModuleChatProtocol {
    
    func askChat()
    
    func toChatTestPage(from viewController: UIViewController)
}

public let mModuleChat = { x_resolveModuleModel(of: ModuleChatProtocol.self) }()
