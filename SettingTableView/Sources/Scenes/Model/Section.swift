//
//  Section.swift
//  SettingTableView
//
//  Created by mac on 08.05.2021.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingsLine]
}

extension Section {
    static func getSettings() -> [Section] {
        return [
            Section(title: " ", options: [
                SettingsLine(icone: UIImage(systemName: "airplane"), title: "Авиарежим",
                             iconeBackgrounColor: .systemOrange, detailLabel: nil, type: .switch),
                SettingsLine(icone: UIImage(systemName: "wifi"), title: "Wi-Fi",
                             iconeBackgrounColor: .link, detailLabel: "Не подключено", type: .arrowWithTitle),
                SettingsLine(icone: UIImage(named: "system-bluetooth"), title: "Blutooth",
                             iconeBackgrounColor: .link, detailLabel: "Вкл.", type: .arrowWithTitle),
                SettingsLine(icone: UIImage(systemName: "antenna.radiowaves.left.and.right"), title: "Сотовая связь", iconeBackgrounColor: .systemGreen, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "personalhotspot"), title: "Режим модема",
                             iconeBackgrounColor: .systemGreen, detailLabel: "Не подключено", type: .arrow),
                SettingsLine(icone: UIImage(named: "1451546"), title: "VPN",
                             iconeBackgrounColor: .link, detailLabel: nil, type: .switch)

            ]),
            Section(title: " ", options: [
                SettingsLine(icone: UIImage(systemName: "note"), title: "Уведомления",
                             iconeBackgrounColor: .systemRed, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "speaker.wave.3"), title: "Звуки, тактильные сигналы", iconeBackgrounColor: .systemRed, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "moon.fill"), title: "Не беспокоить",
                             iconeBackgrounColor: .blue, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "hourglass"), title: "Экранное время",
                             iconeBackgrounColor: .blue, detailLabel: nil, type: .arrow)
            ]),
            Section(title: " ", options: [
                SettingsLine(icone: UIImage(systemName: "gear"), title: "Основные",
                             iconeBackgrounColor: .systemGray, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "slider.horizontal.3"), title: "Пункт управления",
                             iconeBackgrounColor: .systemGray, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "textformat.size"), title: "Экран и яркость",
                             iconeBackgrounColor: .link, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "house"), title: "Экран домой",
                             iconeBackgrounColor: .blue, detailLabel: nil, type: .arrow)
            ])
        ]
    }
}
