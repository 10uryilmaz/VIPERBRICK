// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  SampleModuleRouter.swift
//  VIPERBRICK
//
//  Created by ONUR YILMAZ on 30.09.2021.
//  
//

import Foundation
import UIKit
// To create UINavigationController
// 1. Change return type of CreateModule class to UiNavigationController
// 2. Add navigationController after viewcontroller
//      let navigationController = UINavigationController(rootViewController: viewController)
// 3. Add the viewcontroller into navigationcontroller
//      let navigationController = UINavigationController(rootViewController: viewController)
// 4. Change return value of createModule() function from viewController to navigationController

class SampleModuleRouter: PresenterToRouterSampleModuleProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        //For Programmatic UI or Swiftui uncomment next line and comment following two lines
        //let viewController = SampleModuleViewController()
        let storyBoard = UIStoryboard(name:"SampleModule", bundle: nil)
        let viewController: SampleModuleViewController = storyBoard.instantiateViewController(withIdentifier: "SampleModuleStoryBoard") as! SampleModuleViewController
        //You need to add Storyboard named SampleModule and define its identifier as SampleModuleStoryboard to the project
        
        let presenter: ViewToPresenterSampleModuleProtocol & InteractorToPresenterSampleModuleProtocol = SampleModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = SampleModuleRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = SampleModuleInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
    //Push to next Viewcontroller
    //    func pushToNextModule(on view: PresenterToViewSampleModuleProtocol) {
    //        let NextModuleViewController = NextModuleRouter.createModule()
    //
    //        let viewController = view as! SampleModuleViewController
    //        viewController.navigationController?
    //            .pushViewController(NextModuleViewController, animated: true)
    //
    //    }
}
