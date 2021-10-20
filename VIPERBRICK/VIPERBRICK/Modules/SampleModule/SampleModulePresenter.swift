// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  SampleModulePresenter.swift
//  VIPERBRICK
//
//  Created by ONUR YILMAZ on 30.09.2021.
//  
//

import Foundation

class SampleModulePresenter: ViewToPresenterSampleModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewSampleModuleProtocol?
    var interactor: PresenterToInteractorSampleModuleProtocol?
    var router: PresenterToRouterSampleModuleProtocol?
}

extension SampleModulePresenter: InteractorToPresenterSampleModuleProtocol {
//Push to next Viewcontroller
//    func pushToNext(){
//        router?.pushToNextModule(on: view!)
//    }
}
