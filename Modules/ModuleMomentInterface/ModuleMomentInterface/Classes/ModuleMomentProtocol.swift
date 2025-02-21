//
//  ModuleMomentProtocol.swift
//  ModuleMomentInterface
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import XModuleCore

public protocol ModuleMomentProtocol {
    
    func askMoment()
    
    func toMomentTestPage(from viewController: UIViewController)
}

public let mModuleMoment = { x_resolveModuleModel(of: ModuleMomentProtocol.self) }()


