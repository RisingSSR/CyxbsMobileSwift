//
//  RyScheduleViewController.swift
//  CyxbsMobileSwift
//
//  Created by SSR on 2022/11/16.
//

import UIKit

class RyScheduleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        RyScheduleRequest.request(sno: "2021215154", kind: .student) { item in
            print("abc")
        } failure: { error in
            
        }

    }
}

