//
//  Created by Sergi Gracia on 30/01/2017.
//  Copyright © 2017 Caramba. All rights reserved.
//

import XCTest
import Quick
import Nimble

class CurtTests: QuickSpec {
    override func spec() {

        var view: UIView!
        var viewA: UIView!
        var viewB: UIView!
        var viewC: UIView!


        beforeEach {
            view = UIView()
            viewA = UIView()
            viewB = UIView()
            viewC = UIView()
            [viewA, viewB, viewC].forEach { view.addSubview($0) }
        }

        describe("") {

            var constraintSpec: NSLayoutConstraint!
            var constraintNew: NSLayoutConstraint!

            beforeEach {
                constraintSpec = viewA.topAnchor.constraint(equalTo: viewB.topAnchor)
                constraintSpec.isActive = true
                constraintNew = viewA.topAnchor ~ viewB.topAnchor + 10
            }

            itBehavesLike("equal-constraints", sharedExampleContext: { () -> (NSDictionary) in
                var context: [String: AnyObject] = [:]
                context["constraintA"] = constraintNew as NSLayoutConstraint?
                context["constraintB"] = constraintSpec as NSLayoutConstraint?
                return context as (NSDictionary)
            })
        }
    }
}
