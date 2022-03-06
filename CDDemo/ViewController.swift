//
//  ViewController.swift
//  CDDemo
//
//  Created by German Buela on 05/03/2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet private var topView: UIView!
    @IBOutlet private var bottomView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sheetView = SheetView()
        let sheetVC = UIHostingController(rootView: sheetView)
        topView.addPinnedSubview(child: sheetVC.view)
        
        let dialogView = DialogView()
        let dialogVC = UIHostingController(rootView: dialogView)
        bottomView.addPinnedSubview(child: dialogVC.view)
    }
    
    @IBAction private func popUp() {
        let dialogView = DialogView()
        let dialogVC = UIHostingController(rootView: dialogView)
        present(dialogVC, animated: true)
    }
}

extension UIView {
    func addPinnedSubview(child: UIView) {
        addSubview(child)
        child.topAnchor.constraint(equalTo: topAnchor).isActive = true
        child.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        child.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        child.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        child.translatesAutoresizingMaskIntoConstraints = false
    }
}
