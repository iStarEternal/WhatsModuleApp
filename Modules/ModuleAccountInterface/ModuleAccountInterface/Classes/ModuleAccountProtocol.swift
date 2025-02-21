//
//  ModuleAccountProtocol.swift
//  ModuleMomentInterface
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import XModuleCore

public protocol ModuleAccountProtocol {
    
    func askAccount()
    
    func toAcccountTestPage(from viewController: UIViewController)
}

public let mModuleAccount = { x_resolveModuleModel(of: ModuleAccountProtocol.self) }()
