//
//  ViewCodable.swift
//  GrowMartApp
//
//  Created by Eduardo Junior on 02/09/22.
//

public protocol ViewCodable: AnyObject {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

public extension ViewCodable {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }

    func buildViewHierarchy() {}

    func setupConstraints() {}

    func setupAdditionalConfiguration() {}
}
