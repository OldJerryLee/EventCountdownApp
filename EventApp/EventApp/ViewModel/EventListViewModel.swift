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
    var onUpdate = {}

    enum Cell {
        case event(EventCellViewModel)
    }

    private(set) var cells: [Cell] = []
//    private let coreDataManager: CoreDataManager
//
//    init(coreDataManager: CoreDataManager) {
//        self.coreDataManager = coreDataManager
//    }

    func viewDidLoad() {
        cells = [.event(EventCellViewModel()), .event(EventCellViewModel())]
        onUpdate()
    }

    func tappedAddEvent() {
        coodinator?.startAddEvent()
    }

    func numberOfRows() -> Int {
        return cells.count
    }

    func cell(at indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
}
