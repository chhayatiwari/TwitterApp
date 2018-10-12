//
//  GCDBlackBox.swift
//  TwitterApp
//
//  Created by Chhaya Tiwari on 10/12/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import Foundation
func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}
