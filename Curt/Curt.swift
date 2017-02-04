import UIKit

precedencegroup ConstantPrecedence {
    higherThan: AssignmentPrecedence, AdditionPrecedence, MultiplicationPrecedence
}
precedencegroup ConstraintPrecedence {
    higherThan: AssignmentPrecedence, ConstantPrecedence
}

infix operator ~ : ConstraintPrecedence
infix operator <~ : ConstraintPrecedence
infix operator >~ : ConstraintPrecedence
infix operator + : ConstantPrecedence
infix operator - : ConstantPrecedence
infix operator * : ConstantPrecedence

// MARK: - Basic Operations

public func ~ <T>(lhs: NSLayoutAnchor<T>, rhs: NSLayoutAnchor<T>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalTo: rhs)
    constraint.isActive = true
    return constraint
}

public func >~ <T>(lhs: NSLayoutAnchor<T>, rhs: NSLayoutAnchor<T>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(greaterThanOrEqualTo: rhs)
    constraint.isActive = true
    return constraint
}

public func <~ <T>(lhs: NSLayoutAnchor<T>, rhs: NSLayoutAnchor<T>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
    constraint.isActive = true
    return constraint
}

public func + (lhs: NSLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
    lhs.constant = rhs
    return lhs
}

public func - (lhs: NSLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
    lhs.constant = CGFloat(-rhs)
    return lhs
}

public func ~ (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalToConstant: rhs)
    constraint.isActive = true
    return constraint
}

public func >~ (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    let constraint = lhs.constraint(greaterThanOrEqualToConstant: rhs)
    constraint.isActive = true
    return constraint
}

public func <~ (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    let constraint = lhs.constraint(lessThanOrEqualToConstant: rhs)
    constraint.isActive = true
    return constraint
}

public func * (lhs: NSLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
    let c = NSLayoutConstraint(item: lhs.firstItem,
                               attribute: lhs.firstAttribute,
                               relatedBy: lhs.relation,
                               toItem: lhs.secondItem,
                               attribute: lhs.secondAttribute,
                               multiplier: rhs,
                               constant: lhs.constant)
    c.isActive = lhs.isActive
    return c
}


// MARK: - Basic Operations (Int support)

public func + (lhs: NSLayoutConstraint, rhs: Int) -> NSLayoutConstraint {
    lhs.constant = CGFloat(rhs)
    return lhs
}

public func - (lhs: NSLayoutConstraint, rhs: Int) -> NSLayoutConstraint {
    lhs.constant = CGFloat(-rhs)
    return lhs
}

public func ~ (lhs: NSLayoutDimension, rhs: Int) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalToConstant: CGFloat(rhs))
    constraint.isActive = true
    return constraint
}

public func >~ (lhs: NSLayoutDimension, rhs: Int) -> NSLayoutConstraint {
    let constraint = lhs.constraint(greaterThanOrEqualToConstant: CGFloat(rhs))
    constraint.isActive = true
    return constraint
}

public func <~ (lhs: NSLayoutDimension, rhs: Int) -> NSLayoutConstraint {
    let constraint = lhs.constraint(lessThanOrEqualToConstant: CGFloat(rhs))
    constraint.isActive = true
    return constraint
}

public func * (lhs: NSLayoutConstraint, rhs: Int) -> NSLayoutConstraint {
    let c = NSLayoutConstraint(item: lhs.firstItem,
                               attribute: lhs.firstAttribute,
                               relatedBy: lhs.relation,
                               toItem: lhs.secondItem,
                               attribute: lhs.secondAttribute,
                               multiplier: CGFloat(rhs),
                               constant: lhs.constant)
    c.isActive = lhs.isActive
    return c
}

// MARK: - Extra operations

public func ~ (lhs: UIView, rhs: UIView) -> [NSLayoutConstraint] {
    let constraints = [
        lhs.topAnchor.constraint(equalTo: rhs.topAnchor),
        lhs.leadingAnchor.constraint(equalTo: rhs.leadingAnchor),
        lhs.trailingAnchor.constraint(equalTo: rhs.trailingAnchor),
        lhs.bottomAnchor.constraint(equalTo: rhs.bottomAnchor)
    ]
    NSLayoutConstraint.activate(constraints)
    return constraints
}
