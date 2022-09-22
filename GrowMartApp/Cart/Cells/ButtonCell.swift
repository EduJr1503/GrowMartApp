//
//  ButtonCell.swift
//  GrowMartApp
//
//  Created by Eduardo Junior on 18/09/22.
//

import UIKit

public protocol ButtonCellDelegate: AnyObject {
    func didTapButton()
}

public final class ButtonCell: UITableViewCell {
    
    // MARK: Public Properties
    public weak var delegate: ButtonCellDelegate?
    
    // MARK: Private Properties
    private lazy var button: UIButton = {
        let element = UIButton()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.layer.cornerRadius = 5
        element.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        element.configuration = .makeWith(backgroundColor: .init(rgb: 0xFFC13B),
                                         title: "check-out",
                                         font: .nunito(style: .semiBold, size: 18),
                                         icon: nil)
    }()
    
    // MARK: Actions
    
    @objc
    func didTapButton() {
        delegate?.didTapButton()
    }
    
    // MARK: Inits
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ButtonCell: ViewCodable {
    public func buildViewHierarchy() {
        contentView.addSubview(button)
    }
    
    public func setupConstraints() {
        
    }
    
    public func setupAdditionalConfiguration() {
        
    }
    
}

// parei em 1:01:32
