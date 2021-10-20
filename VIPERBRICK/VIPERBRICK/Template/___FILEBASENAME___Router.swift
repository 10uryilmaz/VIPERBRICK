// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
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

class ___VARIABLE_ModuleName___Router: PresenterToRouter___VARIABLE_ModuleName___Protocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        //For Programmatic UI or Swiftui uncomment next line and comment following two lines
        //let viewController = ___VARIABLE_ModuleName___ViewController()
        let storyBoard = UIStoryboard(name:"___VARIABLE_ModuleName___", bundle: nil)
        let viewController: ___VARIABLE_ModuleName___ViewController = storyBoard.instantiateViewController(withIdentifier: "___VARIABLE_ModuleName___StoryBoard") as! ___VARIABLE_ModuleName___ViewController
        //You need to add Storyboard named ___VARIABLE_ModuleName___ and define its identifier as ___VARIABLE_ModuleName___Storyboard to the project
        
        let presenter: ViewToPresenter___VARIABLE_ModuleName___Protocol & InteractorToPresenter___VARIABLE_ModuleName___Protocol = ___VARIABLE_ModuleName___Presenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ___VARIABLE_ModuleName___Router()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ___VARIABLE_ModuleName___Interactor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
    //Push to next Viewcontroller
    //    func pushToNextModule(on view: PresenterToView___VARIABLE_ModuleName___Protocol) {
    //        let NextModuleViewController = NextModuleRouter.createModule()
    //
    //        let viewController = view as! ___VARIABLE_ModuleName___ViewController
    //        viewController.navigationController?
    //            .pushViewController(NextModuleViewController, animated: true)
    //
    //    }
}
