
import UIKit

class ProfileViewController: UIViewController {
    private var profileHeaderView: ProfileHeaderView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupProfileHeaderView()
        self.navigationItem.title = "Profile"
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = .white // Цвет фона панели
            appearance.titleTextAttributes = [.foregroundColor: UIColor.black] // Цвет текста
            // Устанавливаем созданный внешний вид для стандартного, компактного и прокручиваемого состояния панели
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
            // Удаляем тень (линию) под навигационной панелью, если необходимо
            navigationController?.navigationBar.shadowImage = UIImage()
        } else {
            // Для iOS ниже 13 версии
            navigationController?.navigationBar.barTintColor = .white
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
            navigationController?.navigationBar.shadowImage = UIImage()
        }
    }

    private func setupProfileHeaderView() {
        profileHeaderView = ProfileHeaderView()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)

        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
