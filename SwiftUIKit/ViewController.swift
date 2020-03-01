

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let test = VerticalStack(spacing: 8, [
            Spacer(),
            ThreeColumns(
                columnWidth: 24, spacing: 8,
                left: VerticalStack(spacing: 4, [
                    MockView(.black),
                    MockView(.green),
                    Spacer(),
                    ]
                ),
                middle: MockView(.green),
                right: MockView(.blue)
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

}

