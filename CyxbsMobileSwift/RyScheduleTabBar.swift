//
//  RyScheduleTabBar.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2023/5/8.
//

import UIKit

class RyScheduleTabBar: UITabBar {
    
    var heightForScheduleTabBar: CGFloat = 58
    var curribulumBarHidden: Bool = false
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        if curribulumBarHidden {
            sizeThatFits.height += heightForScheduleTabBar
        }
        return sizeThatFits
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for subview in self.subviews {
            if subview.isKind(of: NSClassFromString("UITabBarButton")!) {
                if curribulumBarHidden {
                    subview.frame.origin.y += heightForScheduleTabBar
                    subview.frame.size.height -= heightForScheduleTabBar
                }
            }
        }
    }
}
