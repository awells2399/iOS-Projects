//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Aaron Wells on 7/20/23.
//

import SwiftUI

#if canImport(UIKit)

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#endif
