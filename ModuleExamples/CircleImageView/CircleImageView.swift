//
//  CircleImageView.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 07/10/2020.
//  Copyright © 2020 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {
    override func layoutSubviews() {
        layer.masksToBounds = true
        layer.cornerRadius = bounds.width / 2
    }
}
