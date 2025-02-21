//
//  XModule.swift
//  XModuleCore
//
//  Created by hyh on 2025/2/21.
//

import Foundation
import Swinject

private let container = Container()

/// 注册模块
public func x_registerModuleModel<T>(of type: T.Type, singleInstance: T) {
    container.register(T.self) { _ in singleInstance }
}

/// 解析模块
public func x_resolveModuleModel<T>(of type: T.Type) -> T  {
    guard let instance = container.resolve(T.self) else {
        fatalError("未能解析到 \(T.self) 的实例，请确保已调用 register 进行注册")
    }
    return instance as T
}

/// 判断模块是否已注册
public func x_hasModuleModel<T>(of type: T.Type) -> Bool  {
    return container.resolve(T.self) != nil
}

