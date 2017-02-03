//
//  Created by Sergi Gracia on 30/01/2017.
//  Copyright © 2017 Caramba. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    override open func isEqual(_ object: Any?) -> Bool {
        guard let c = object as? NSLayoutConstraint else { return false }
        return firstAnchor == c.firstAnchor
            && secondAnchor == c.secondAnchor
            && constant == c.constant
            && isActive == c.isActive
    }
}
