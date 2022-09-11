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
        
        cartView?.delegate = self
        setupView()
    }
}

extension CartViewController: ViewCodable {
    func buildViewHierarchy() {
        if let cartView = cartView {
            view.addSubview(cartView)
        }
    }
    
    func setupConstraints() {
        cartView?.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupAdditionalConfiguration() {
        cartView?.delegate = self
    }
    
}

extension CartViewController: CartViewDelegate {
    
}

// parei em 27min45s
