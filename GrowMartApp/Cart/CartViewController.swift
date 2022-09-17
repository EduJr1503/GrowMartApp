//
//  CartViewController.swift
//  GrowMartApp
//
//  Created by Eduardo Junior on 11/09/22.
//

import UIKit

class CartViewController: UIViewController {
    
    private var cartView: CartView?
    
    override func loadView() {
        super.loadView()
        
        cartView = .init()
        view = cartView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        cartView?.delegate = self
    }
}

extension CartViewController: CartViewDelegate {
    func numberOfRows() -> Int {
        10
    }
}


