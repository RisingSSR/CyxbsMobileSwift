//
//  RyTabBarController.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/16.
//

import UIKit

class RyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Draw TabBar BlurEffect
        let effectView = UIVisualEffectView(effect: UIBlurEffect(style: .prominent))
        effectView.frame.size = self.view.frame.size
        self.tabBar.addSubview(effectView)
        
        // ViewControllers
        self.viewControllers = [
            ScheduleViewController()
        ]
    }
    
    lazy var scheudle: ScheduleViewController = {
        ScheduleViewController()
    }()
}
