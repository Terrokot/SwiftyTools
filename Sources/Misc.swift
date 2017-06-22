//
//  Misc.swift
//  SwiftTools
//
//  Created by Vladas Zakrevskis on 6/22/17.
//  Copyright © 2017 VladasZ. All rights reserved.
//

import Foundation

public func onMain(_ action: @escaping () -> ()) {
    
    DispatchQueue.main.async(execute: action)
}

public func after(_ delay: Double, action: @escaping () -> ()) {
    
    let when = DispatchTime.now() + delay
    DispatchQueue.main.asyncAfter(deadline: when, execute: action)
}

public func += <K, V> ( left: inout [K:V], right: [K:V]) {
    
    for (k, v) in right {
        left[k] = v
    }
}

@inline(__always)
public func random() -> Int {
    
    return Int(UInt32(arc4random()))
}

@inline(__always)
public func random(_ uniform:Int) -> Int {
    
    return Int(UInt32(arc4random_uniform(UInt32(uniform))))
}

@inline(__always)
public func randomBool() -> Bool {
    
    return UInt32(arc4random()) % UInt32(2) == 0
}

