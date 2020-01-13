//
//  ListViewController.swift
//  MultipleSections
//
//  Created by Алексей Пархоменко on 13.01.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    let sections = Bundle.main.decode([MSection].self, from: "model.json")

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .orange
//        sections.map { (section) in
//            section.items.map { (chat) in
//                print(chat.friendName)
//            }
//        }
    }
}

