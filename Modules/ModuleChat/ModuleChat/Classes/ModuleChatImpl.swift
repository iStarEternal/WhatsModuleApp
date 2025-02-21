//
//  ModuleChatImpl.swift
//  ModuleMomentInterface
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import XModuleCore
import ModuleChatInterface

public class ModuleChatImpl: NSObject, ModuleChatProtocol {
    
    public func askChat() {
        print("\(type(of: self).description()) -> testChat")
    }
    
    public func toChatTestPage(from viewController: UIViewController) {
        viewController.navigationController?.pushViewController(ChatTestViewController(), animated: true)
    }
}

public func mRegisterChatModel() {
    x_registerModuleModel(of: ModuleChatProtocol.self, singleInstance: ModuleChatImpl())
}
