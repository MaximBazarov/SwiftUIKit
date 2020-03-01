
import UIKit

public extension UIView {

    func anchor(toBordersOf view: UIView, insets: UIEdgeInsets = .zero) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            constraintsForAnchoringTo(boundsOf: view, with: insets)
        )
    }

    func constraintsForAnchoringTo(boundsOf view: UIView, with spacing: UIEdgeInsets = .zero) -> [NSLayoutConstraint] {
       return [
           topAnchor.constraint(equalTo: view.topAnchor, constant: spacing.top),
           leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: spacing.left),
           bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: spacing.bottom),
           trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: spacing.right),
       ]
   }

}

public func MockView(_ color: UIColor) -> UIView {
    let v = UIView()
    v.backgroundColor = color
    v.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        v.heightAnchor.constraint(equalToConstant: 50)
    ])
    return v
}
