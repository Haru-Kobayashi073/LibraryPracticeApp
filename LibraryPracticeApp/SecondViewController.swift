//
//  SecondViewController.swift
//  LibraryPracticeApp
//
//  Created by 小林春 on 2024/07/11.
//

import UIKit
import SnapKit
import Kingfisher
import Lottie

class SecondViewController: UIViewController {
    let urlStr = URL(string: "https://picsum.photos/200/300")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let stack = UIStackView()
        stack.axis = .vertical
        view.addSubview(stack)
        
        stack.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        
        stack.addArrangedSubview(imageView)
        
        let animationView = LottieAnimationView()
        stack.addArrangedSubview(animationView)

        let animation = LottieAnimation.named("32921-volumn-from-mute-to-maximum.json", subdirectory: nil)

        animationView.contentMode = .scaleAspectFit
        animationView.animation = animation

        let button = UIButton()
        button.setTitle("load", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addAction(.init {_ in
            print("loaddd")
            imageView.kf.indicatorType = .activity
            imageView.kf.setImage(with: self.urlStr)
            animationView.play(fromProgress: 0, toProgress: 1, loopMode: .loop)
        }, for: .touchUpInside)
        
        stack.addArrangedSubview(button)
        
        let textField = UITextField()
        textField.borderStyle = .line
        textField.backgroundColor = .blue
        stack.addArrangedSubview(textField)
        
//        button.snp.makeConstraints { make in
//            
//        }
        
    }
}
