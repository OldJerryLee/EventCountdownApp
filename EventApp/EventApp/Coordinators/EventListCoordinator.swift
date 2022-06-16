//
//  EventListCoordinator.swift
//  EventApp
//
//  Created by Fabricio Pujol on 31/05/22.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []

    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let eventListController = EventListViewController.instantiate()
        navigationController.setViewControllers([eventListController], animated: false)
    }
}
