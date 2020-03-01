import UIKit

public final class Wrapper: UIStackView {

    @available(*, unavailable, renamed: "init(frame:containing:)")
    override init(frame: CGRect) {
        fatalError("init(frame:) is not available please use init(frame:containing:")
    }

    @available(*, unavailable, renamed: "init(frame:containing:)")
    required init(coder: NSCoder) {
        fatalError("init(coder:) is not available please use init(frame:containing:")
    }

    public init(frame: CGRect, containing child: UIView) {
        super.init(frame: frame)
        addSubview(child)
        child.anchor(toBordersOf: self)
        setNeedsLayout()
    }

}
