import UIKit

public final class Spacer: UIView {

    @available(*, unavailable, renamed: "init()")
    override init(frame: CGRect) {
        fatalError("init(frame:) is not available please use init()")
    }

    @available(*, unavailable, renamed: "init()")
    required init(coder: NSCoder) {
        fatalError("init(coder:) is not available please use init()")
    }

    @available(*, unavailable, renamed: "init()")
    public init(arrangedSubviews: [UIView]) {
        fatalError("init(arrangedSubviews:) is not available please use init()")
    }

    public init() {
        super.init(frame: .zero)
        setContentHuggingPriority(.defaultHigh, for: .vertical)
        setContentHuggingPriority(.defaultHigh, for: .horizontal)
    }

}
