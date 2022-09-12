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
        guard let cartView = cartView else {
            return
        }
            
        cartView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cartView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            cartView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            cartView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            cartView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    
    func setupAdditionalConfiguration() {
        cartView?.delegate = self
    }
    
}

extension CartViewController: CartViewDelegate {

}

// parei em 27min45s
