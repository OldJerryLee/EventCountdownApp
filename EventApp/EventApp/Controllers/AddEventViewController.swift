//
//  AddEventViewController.swift
//  EventApp
//
//  Created by Fabricio Pujol on 07/12/22.
//

import UIKit

class AddEventViewController: UIViewController {

    var viewModel: AddEventViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        viewModel.viewDidDisappear()
    }

    deinit{
        print("deinit from add event controller")
    }
}
