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

        var cA: NSLayoutConstraint!
        var cB: NSLayoutConstraint!

        beforeEach {
            view = UIView()
            viewA = UIView()
            viewB = UIView()
            viewC = UIView()
            [viewA, viewB, viewC].forEach { view.addSubview($0) }
        }

        describe("NSLayoutYAxisAnchor ~ NSLayoutYAxisAnchor") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(equalTo: viewB.topAnchor)
                cA.isActive = true
                cB = viewA.topAnchor ~ viewB.topAnchor
                expect(cA) == cB
            }
        }

        describe("NSLayoutXAxisAnchor ~ NSLayoutXAxisAnchor") {
            it("creates valid constraint") {
                cA = viewA.leadingAnchor.constraint(equalTo: viewB.leadingAnchor)
                cA.isActive = true
                cB = viewA.leadingAnchor ~ viewB.leadingAnchor
                expect(cA) == cB
            }
        }

        describe("NSLayoutDimension ~ NSLayoutDimension") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(equalTo: viewB.widthAnchor)
                cA.isActive = true
                cB = viewA.widthAnchor ~ viewB.widthAnchor
                expect(cA) == cB
            }
        }
    }
}
