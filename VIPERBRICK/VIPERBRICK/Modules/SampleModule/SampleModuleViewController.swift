// Created with VIPERBRICK 2021
// Git Repo: https://github.com/10uryilmaz/VIPERBRICK
//  SampleModuleViewController.swift
//  VIPERBRICK
//
//  Created by ONUR YILMAZ on 30.09.2021.
//  
//

import UIKit

class SampleModuleViewController: UIViewController {
    // MARK: - Properties
    var presenter: ViewToPresenterSampleModuleProtocol?
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//Push to next Viewcontroller
//    @IBAction func Buttontouched(_ sender: Any) {
//        presenter?.pushToNext()
//    }
}

extension SampleModuleViewController: PresenterToViewSampleModuleProtocol{
    // TODO: Implement View Output Methods
}
