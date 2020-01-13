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

// MARK: - SwiftUI
import SwiftUI
struct ListProvider: PreviewProvider {
    static var previews: some View {
        ContainterView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainterView: UIViewControllerRepresentable {
        
        let listVC = ListViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<ListProvider.ContainterView>) -> ListViewController {
            return listVC
        }
        
        func updateUIViewController(_ uiViewController: ListProvider.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<ListProvider.ContainterView>) {
            
        }
    }
}



