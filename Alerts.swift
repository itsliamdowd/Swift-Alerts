import UIKit


class Alerts: UIViewController {


    @IBOutlet weak var alertView: UIView!


    @IBOutlet weak var closeButton: UIButton!



    @IBAction func closeButtonPressed(_ sender: Any) {


        self.dismiss(animated: true, completion: nil)


    }


    @IBOutlet weak var alertText: UILabel!


    var alertDataText: String = "Alert"


    override func viewDidLoad() {


        super.viewDidLoad()


        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)


        let blurView = UIVisualEffectView(effect: blurEffect)


        blurView.frame = view.bounds


        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]


        view.addSubview(blurView)


        alertView.layer.cornerRadius = 20


        alertView.layer.masksToBounds = true


        closeButton.layer.cornerRadius = 10


        view.sendSubviewToBack(blurView)


        DispatchQueue.main.async {


            self.alertText?.text = UserDefaults.standard.string(forKey: "alertText")


            self.alertText.setContentCompressionResistancePriority(.required, for: .horizontal)


        }


    }


}

