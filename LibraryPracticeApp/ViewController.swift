//
//  ViewController.swift
//  LibraryPracticeApp
//
//  Created by 小林春 on 2024/07/11.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        let button = UIButton()
        button.setTitle("push", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.addAction(.init {_ in
            print("yeaaaa")
            let vc = SecondViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }, for: .touchUpInside)

        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

