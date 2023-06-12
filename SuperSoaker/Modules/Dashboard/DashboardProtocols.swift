//  DashboardProtocols.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 04/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

// MARK: VIEW -> PRESENTER
protocol Dashboard_ViewToPresenterProtocol: AnyObject {
	var view: Dashboard_PresenterToViewProtocol? { get set }
	var interactor: Dashboard_PresenterToInteractorProtocol? { get set }
	var router: Dashboard_PresenterToRouterProtocol? { get set }
}

// MARK: PRESENTER -> INTERACTOR
protocol Dashboard_PresenterToInteractorProtocol: AnyObject {
    var presenter: Dashboard_InteractorToPresenterProtocol? { get set }
}

// MARK: INTERACTOR -> PRESENTER
protocol Dashboard_InteractorToPresenterProtocol: AnyObject {
}

// MARK: PRESENTER -> VIEW
protocol Dashboard_PresenterToViewProtocol: AnyObject {
    var presenter: Dashboard_ViewToPresenterProtocol? { get set }
}

// MARK: PRESENTER -> ROUTER
protocol Dashboard_PresenterToRouterProtocol: AnyObject {
}
