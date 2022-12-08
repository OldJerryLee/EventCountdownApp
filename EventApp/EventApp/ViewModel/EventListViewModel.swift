//
//  EventListViewModel.swift
//  EventApp
//
//  Created by Fabricio Pujol on 16/06/22.
//

import Foundation

final class EventListViewModel {

    let title = "Events"
    var coodinator: EventListCoordinator?

    func tappedAddEvent() {
        coodinator?.startAddEvent()
    }
}
