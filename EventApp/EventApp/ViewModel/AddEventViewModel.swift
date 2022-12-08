//
//  AddEventViewModel.swift
//  EventApp
//
//  Created by Fabricio Pujol on 07/12/22.
//

import Foundation

final class AddEventViewModel {
    var coordinator: AddEventCoordinator?

    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }

    deinit {
        print("deinit from add event view model")
    }
}
