//
//  ViewController.swift
//  SwiftUIKit
//
//  Created by DaBazar on 2/29/20.
//  Copyright © 2020 DaBazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let test = VerticalStack(spacing: 8, [
            ThreeColumns(
                columnWidth: 24, spacing: 8,
                left: VerticalStack(spacing: 4, [
                    view(.black),
                    view(.green),
                    Spacer(),
                    ]
                ),
                middle: view(.green),
                right: view(.blue)
            ),
            Spacer(),
        ])
        view.addSubview(test)
        test.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            test.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            test.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: view.safeAreaInsets.bottom),
            test.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.safeAreaInsets.left),
            test.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: view.safeAreaInsets.right),
        ])
    }


    private func view(_ color: UIColor) -> UIView {
        let v = UIView()
        v.backgroundColor = color
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }
}

