//
//  CartView.swift
//  GrowMartApp
//
//  Created by Eduardo Junior on 08/09/22.
//

import UIKit

protocol CartViewDelegate: AnyObject {
    

}
public final class CartView: UIView {
    // MARK: - Public Properties
    weak var delegate: CartViewDelegate?
    
    // MARK: - Private Properties
    
    private lazy var lineView: UIView = {
        let element = UIView()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.backgroundColor = UIColor(rgb: 0xE8E8E8)
        return element
    }()
    
    private lazy var yellowBarView: UIView = {
        let element = UIView()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.backgroundColor = UIColor(rgb: 0xFFC138)
        return element
    }()
    
    private lazy var tableview: UITableView = {
        let element = UITableView()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.backgroundColor = .white
        // de onde ele pega dos dados?
        // pra quem ele delega os eventos?
        element.separatorStyle = .none
        return element
    }()
    
    // MARK: - Private Methods
    
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
}

extension CartView: ViewCodable{
    public func buildViewHierarchy() {
        addSubview(lineView)
        addSubview(yellowBarView)
        addSubview(tableview)
    }
    
    public func setupConstraints() {
        NSLayoutConstraint.activate([
            lineView.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 2),
            
            yellowBarView.bottomAnchor.constraint(equalTo: lineView.bottomAnchor),
            yellowBarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            yellowBarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            yellowBarView.heightAnchor.constraint(equalToConstant: 5),
            
            tableview.topAnchor.constraint(equalTo: lineView.bottomAnchor),
            tableview.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableview.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
        
    }
    
    public func setupAdditionalConfiguration() {

    }
    
    
}
