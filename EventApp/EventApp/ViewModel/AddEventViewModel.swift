//
//  AddEventViewModel.swift
//  EventApp
//
//  Created by Fabricio Pujol on 07/12/22.
//

import Foundation

final class AddEventViewModel {

    let title = "Add"
    var onUpdate: () -> Void = {}

    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
    }

    var coordinator: AddEventCoordinator?
    private(set) var cells: [AddEventViewModel.Cell] = []

    func viewDidLoad() {
        cells = [
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name", type: .text, onCellUpdate: {})),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Date", subtitle: "", placeholder: "Select a date", type: .date, onCellUpdate: { [weak self] in
                self?.onUpdate()
            })),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Background", subtitle: "", placeholder: "", type: .image, onCellUpdate: {}))
        ]
    }

    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }

    func numberOfRows() -> Int {
        return cells.count
    }

    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }

    func tappedDone() {
        //extract info from cell view models and save in core data
        //tell coordinator do dismiss
    }

    func updateCell(indexPath: IndexPath, subtitle: String) {
        switch cells[indexPath.row] {
        case .titleSubtitle(let titleSubtitleCellViewModel):
            titleSubtitleCellViewModel.update(subtitle)
        }
    }
}
