//  AddAccountProtocols.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 19/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

// MARK: VIEW -> PRESENTER
protocol AddAccount_ViewToPresenterProtocol: AnyObject {
	var view: AddAccount_PresenterToViewProtocol? { get set }
	var interactor: AddAccount_PresenterToInteractorProtocol? { get set }
	var router: AddAccount_PresenterToRouterProtocol? { get set }
}

// MARK: PRESENTER -> INTERACTOR
protocol AddAccount_PresenterToInteractorProtocol: AnyObject {
    var presenter: AddAccount_InteractorToPresenterProtocol? { get set }
}

// MARK: INTERACTOR -> PRESENTER
protocol AddAccount_InteractorToPresenterProtocol: AnyObject {
}

// MARK: PRESENTER -> VIEW
protocol AddAccount_PresenterToViewProtocol: AnyObject {
    var presenter: AddAccount_ViewToPresenterProtocol? { get set }
}

// MARK: PRESENTER -> ROUTER
protocol AddAccount_PresenterToRouterProtocol: AnyObject {
}
