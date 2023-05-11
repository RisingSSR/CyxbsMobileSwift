//
//  RyScheduleTabBarController.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/16.
//

import UIKit

class RyScheduleTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [RyScheduleViewController()]
    }
}
