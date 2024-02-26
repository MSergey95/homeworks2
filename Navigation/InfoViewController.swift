//
//  InfoViewController.swift
//  Navigation
//
//  Created by Сергей Минеев on 2/23/24.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupButton()
    }
    private func setupButton() {
        let button = UIButton(type: .system)
        button.setTitle("Show Alert", for: .normal)
        button.setTitleColor(.white, for: .normal) // Устанавливаем цвет текста кнопки в белый
        button.backgroundColor = .red // Устанавливаем фон кнопки красным
        button.layer.cornerRadius = 15 // Добавляем немного скругления к углам кнопки для лучшего вида
        button.layer.borderWidth = 2 // Добавляем границу
        button.layer.borderColor = UIColor.white.cgColor // Цвет границы
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        // Убираем фиксированные координаты для кнопки
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        // Центрируем кнопку на экране и задаем ей фиксированные размеры
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    @objc private func showAlert() {
        let alertController = UIAlertController(title: "Alert", message: "This is an alert", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("OK button pressed")
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Cancel button pressed")
        }))
        present(alertController, animated: true, completion: nil)
    }
}
/*
 // MARK: - Navigation

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


