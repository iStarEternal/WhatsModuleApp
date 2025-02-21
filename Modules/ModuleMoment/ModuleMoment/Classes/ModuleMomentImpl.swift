//
//  ModuleMomentImpl.swift
//  ModuleMomentInterface
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import XModuleCore
import ModuleMomentInterface

public class ModuleMomentImpl: NSObject, ModuleMomentProtocol {

    public func askMoment() {
        print("\(type(of: self).description()) -> testMoment")
    }
    
    public func toMomentTestPage(from viewController: UIViewController) {
        viewController.navigationController?.pushViewController(MomentTestViewController(), animated: true)
    }
}

public func mRegisterMomentModel() {
    x_registerModuleModel(of: ModuleMomentProtocol.self, singleInstance: ModuleMomentImpl())
}
