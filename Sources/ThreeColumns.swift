import UIKit

/// ```
/// +-------+----------+-------+
/// | left  |  middle  | right |
/// +-------+----------+-------+
/// ```
public final class ThreeColumns: UIStackView {

    @available(*, unavailable, renamed: "init(columnWidth:left:middle:right:)")
    override init(frame: CGRect) {
        fatalError("init(frame:) is not available please use init(columnWidth:left:middle:right:)")
    }

    @available(*, unavailable, renamed: "init(columnWidth:left:middle:right:)")
    required init(coder: NSCoder) {
        fatalError("init(coder:) is not available please use init(columnWidth:left:middle:right:)")
    }

    @available(*, unavailable, renamed: "init(columnWidth:left:middle:right:)")
    public init(arrangedSubviews: [UIView]) {
        fatalError("init(arrangedSubviews:) is not available please use init(columnWidth:left:middle:right:)")
    }

    public override func layoutIfNeeded() {
        super.layoutIfNeeded()
        arrangedSubviews.forEach({ $0.layoutIfNeeded() })
    }

    public init(columnWidth: CGFloat = 16, spacing: CGFloat = 0, left: UIView? = nil, middle: UIView? = nil, right: UIView? = nil) {
        super.init(frame: .zero)
        self.spacing = spacing
        if let left = left {
            addArrangedSubview(left)
            left.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                left.widthAnchor.constraint(equalToConstant: columnWidth)
            ])
        }

        let middle = middle ?? UIView()
        middle.translatesAutoresizingMaskIntoConstraints = false
        middle.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        addArrangedSubview(middle)

        if let right = right {
            addArrangedSubview(right)
            right.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                right.widthAnchor.constraint(equalToConstant: columnWidth)
            ])
        }

    }


}
