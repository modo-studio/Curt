import Quick
import Nimble

class ConstraintSharedExamples: QuickConfiguration {
    override class func configure(_ configuration: Configuration) {
        sharedExamples("equal-constraints") { (sharedExampleContext: @escaping SharedExampleContext) in

            var constraintA: NSLayoutConstraint!
            var constraintB: NSLayoutConstraint!

            beforeEach {
                let context = sharedExampleContext()
                constraintA = context["constraintA"] as! NSLayoutConstraint
                constraintB = context["constraintB"] as! NSLayoutConstraint
            }

            it("has same anchors") {
                expect(constraintA.firstAnchor) == constraintB.firstAnchor
            }
        }
    }
}
