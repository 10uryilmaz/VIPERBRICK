// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  SampleModuleContract.swift
//  VIPERBRICK
//
//  Created by ONUR YILMAZ on 30.09.2021.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewSampleModuleProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterSampleModuleProtocol {
    
    var view: PresenterToViewSampleModuleProtocol? { get set }
    var interactor: PresenterToInteractorSampleModuleProtocol? { get set }
    var router: PresenterToRouterSampleModuleProtocol? { get set }

//Push to next Viewcontroller
//  func pushToNext()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorSampleModuleProtocol {
    
    var presenter: InteractorToPresenterSampleModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterSampleModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterSampleModuleProtocol {
//Push to next Viewcontroller
//  func pushNextModule(on view: PresenterToViewSampleModuleProtocol)
}
