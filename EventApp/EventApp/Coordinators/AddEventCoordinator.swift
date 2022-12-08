//
//  AddEventCoordinator.swift
//  EventApp
//
//  Created by Fabricio Pujol on 24/07/22.
//

import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController

    var parentCoordinator: EventListCoordinator?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let addEventViewController: AddEventViewController = .instantiate()
        let addEventViewModel = AddEventViewModel()
        addEventViewModel.coordinator = self
        addEventViewController.viewModel = addEventViewModel
        navigationController.present(addEventViewController, animated: true, completion: nil)
    }

    func didFinishAddEvent() {
        parentCoordinator?.childDidFinish(self)
    }

    deinit {
        print("deinit from add event coordinator")
    }
}
