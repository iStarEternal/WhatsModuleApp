//
//  ModuleAccountImpl.swift
//  ModuleAccount
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import XModuleCore
import ModuleAccountInterface

public class ModuleAccountImpl: NSObject, ModuleAccountProtocol {

    public func askAccount() {
        print("\(type(of: self).description()) -> testAccount")
    }
    
    public func toAcccountTestPage(from viewController: UIViewController) {
        viewController.navigationController?.pushViewController(AccountTestViewController(), animated: true)
    }
}

public func mRegisterAccountModel() {
    x_registerModuleModel(of: ModuleAccountProtocol.self, singleInstance: ModuleAccountImpl())
}
