import UIKit

public final class VerticalStack: UIStackView {

    @available(*, unavailable, renamed: "init(views:)")
    override init(frame: CGRect) {
        fatalError("init(frame:) is not available please use init(views:)")
    }

    @available(*, unavailable, renamed: "init(views:)")
    required init(coder: NSCoder) {
        fatalError("init(coder:) is not available please use init(views:)")
    }

    @available(*, unavailable, renamed: "init(columnWidth:left:middle:right:)")
    public init(arrangedSubviews: [UIView]) {
        fatalError("init(arrangedSubviews:) is not available please use init(views:)")
    }

    public override func layoutIfNeeded() {
        super.layoutIfNeeded()
        arrangedSubviews.forEach({ $0.layoutIfNeeded() })
    }


    public init(spacing: CGFloat = 0, _ views: [UIView]) {
        super.init(frame: .zero)
        self.spacing = spacing
        self.axis = .vertical
        self.distribution = .fill
        views.forEach({ view in
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addArrangedSubview(view)
        })
    }

}
