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
        var constantFloat: CGFloat!
        var constantNegativeFloat: CGFloat!
        var constantInt: Int!
        var multiplierFloat: CGFloat!
        var multiplierInt: Int!

        beforeEach {
            view = UIView()
            viewA = UIView()
            viewB = UIView()
            viewC = UIView()
            [viewA, viewB, viewC].forEach { view.addSubview($0) }
            constantFloat = 12
            constantNegativeFloat = -constantFloat
            constantInt = Int(constantFloat)
            multiplierFloat = 2.0
            multiplierInt = Int(multiplierFloat)
        }

        describe("constraint(equalTo anchor: NSLayoutAnchor<AnchorType>)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(equalTo: viewB.topAnchor)
                cA.isActive = true
                cB = viewA.topAnchor ~ viewB.topAnchor
                expect(cA) == cB
            }
        }

        describe("constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(greaterThanOrEqualTo: viewB.topAnchor)
                cA.isActive = true
                cB = viewA.topAnchor >~ viewB.topAnchor
                expect(cA) == cB
            }
        }

        describe("constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(lessThanOrEqualTo: viewB.topAnchor)
                cA.isActive = true
                cB = viewA.topAnchor <~ viewB.topAnchor
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(equalTo: viewB.topAnchor, constant: constantFloat)
                cA.isActive = true
                cB = viewA.topAnchor ~ viewB.topAnchor + constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) (Negative Constant)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(equalTo: viewB.topAnchor, constant: constantNegativeFloat)
                cA.isActive = true
                cB = viewA.topAnchor ~ viewB.topAnchor - constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) (Int)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(equalTo: viewB.topAnchor, constant: constantFloat)
                cA.isActive = true
                cB = viewA.topAnchor ~ viewB.topAnchor + constantInt
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) (Negative Int)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(equalTo: viewB.topAnchor, constant: constantNegativeFloat)
                cA.isActive = true
                cB = viewA.topAnchor ~ viewB.topAnchor - constantInt
                expect(cA) == cB
            }
        }

        describe("constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(greaterThanOrEqualTo: viewB.topAnchor, constant: constantFloat)
                cA.isActive = true
                cB = viewA.topAnchor >~ viewB.topAnchor + constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.topAnchor.constraint(lessThanOrEqualTo: viewB.topAnchor, constant: constantFloat)
                cA.isActive = true
                cB = viewA.topAnchor <~ viewB.topAnchor + constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(equalToConstant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(equalToConstant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor ~ constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(equalToConstant c: CGFloat) (Int)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(equalToConstant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor ~ constantInt
                expect(cA) == cB
            }
        }

        describe("constraint(greaterThanOrEqualToConstant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(greaterThanOrEqualToConstant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor >~ constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(greaterThanOrEqualToConstant c: CGFloat) (Int)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(greaterThanOrEqualToConstant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor >~ constantInt
                expect(cA) == cB
            }
        }

        describe("constraint(lessThanOrEqualToConstant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(lessThanOrEqualToConstant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor <~ constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(lessThanOrEqualToConstant c: CGFloat) (Int)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(lessThanOrEqualToConstant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor <~ constantInt
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(equalTo: viewB.widthAnchor, multiplier: multiplierFloat)
                cA.isActive = true
                cB = viewA.widthAnchor ~ viewB.widthAnchor * multiplierFloat
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) (Int)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(equalTo: viewB.widthAnchor, multiplier: multiplierFloat)
                cA.isActive = true
                cB = viewA.widthAnchor ~ viewB.widthAnchor * multiplierInt
                expect(cA) == cB
            }
        }

        describe("constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(greaterThanOrEqualTo: viewB.widthAnchor, multiplier: multiplierFloat)
                cA.isActive = true
                cB = viewA.widthAnchor >~ viewB.widthAnchor * multiplierFloat
                expect(cA) == cB
            }
        }

        describe("constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(lessThanOrEqualTo: viewB.widthAnchor, multiplier: multiplierFloat)
                cA.isActive = true
                cB = viewA.widthAnchor <~ viewB.widthAnchor * multiplierFloat
                expect(cA) == cB
            }
        }

        describe("constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(equalTo: viewB.widthAnchor, multiplier: multiplierFloat, constant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor ~ viewB.widthAnchor * multiplierFloat + constantFloat
                expect(cA) == cB
            }
        }

        describe("constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(greaterThanOrEqualTo: viewB.widthAnchor, multiplier: multiplierFloat, constant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor >~ viewB.widthAnchor * multiplierFloat + constantFloat
                expect(cA) == cB
            }
        }
         
        describe("constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat)") {
            it("creates valid constraint") {
                cA = viewA.widthAnchor.constraint(lessThanOrEqualTo: viewB.widthAnchor, multiplier: multiplierFloat, constant: constantFloat)
                cA.isActive = true
                cB = viewA.widthAnchor <~ viewB.widthAnchor * multiplierFloat + constantFloat
                expect(cA) == cB
            }
        }

    }
}
