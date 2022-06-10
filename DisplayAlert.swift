DispatchQueue.main.async {
    self.navigationController?.popViewController(animated: true)
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let alert = storyboard.instantiateViewController(withIdentifier: "Alerts")
    alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
    alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
    UserDefaults.standard.set("Message to present", forKey: "alertText")
    self.present(alert, animated: true, completion: nil)
}
