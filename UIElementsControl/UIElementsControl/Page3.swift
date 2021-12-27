import UIKit

class Page3: UIViewController {

        private let mytitle:UILabel = {
        let lbl = UILabel()
        lbl.text = "REGISTER"
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 40)
        lbl.font = UIFont(name: "Arial", size: 25)
        return lbl
    }()
    
    private let steplbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "NO OF ITEM :"
        return lbl
    }()
    
    private let stplbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "1"
        return lbl
    }()
    
    private let slidetlbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "100"
        return lbl
    }()
    
    private let switchlbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "VEG. ?"
        return lbl
    }()
    
    private let myProgress:UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 0
        return progress
    }()
    
    private let mySlider : UISlider = {
        let slide = UISlider()
        slide.minimumValue = 100
        slide.maximumValue = 2000
        slide.minimumTrackTintColor = .green
        slide.addTarget(self, action: #selector(changedSlide), for: .touchUpInside)
        return slide
    }()
    
    private let myactivity : UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.color = .blue
        activity.backgroundColor = .red
        activity.startAnimating()
        return activity
    }()
    
    private let mySwitch : UISwitch = {
        let switchs = UISwitch()
        switchs.isOn = true
        switchs.onTintColor = .black
        return switchs
    }()
    
    private let myStepper : UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        stepper.value = 1
        stepper.addTarget(self, action: #selector(changeStep), for: .touchUpInside)
        return stepper
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mytitle)
        view.addSubview(steplbl)
        view.addSubview(stplbl)
        view.addSubview(slidetlbl)
        view.addSubview(switchlbl)
        view.addSubview(myProgress)
        view.addSubview(mySlider)
        view.addSubview(myactivity)
        view.addSubview(mySwitch)
        view.addSubview(myStepper)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mytitle.frame = CGRect(x: 120, y: 50, width: view.width - 240, height: 40)
        
        //myactivity.frame = CGRect(x: 150, y: mySwitch.bottom + 30, width: view.width-300, height: 50)
        steplbl.frame = CGRect(x: 20, y: myactivity.bottom + 20, width: 150, height: 30)
        stplbl.frame = CGRect(x: steplbl.left + 150, y: myactivity.bottom + 20, width: 100, height: 30)
        
        myStepper.frame = CGRect(x: stplbl.left + 50, y: myactivity.bottom + 20, width: view.width-300, height: 20)
        mySlider.frame = CGRect(x: 20, y: myStepper.bottom + 20, width: view.width-40, height: 30)
        slidetlbl.frame = CGRect(x: 20, y: myStepper.bottom + 50, width: view.width-40, height: 30)
        
        switchlbl.frame = CGRect(x: 20, y: slidetlbl.bottom + 50, width: view.width-40, height: 30)
        mySwitch.frame = CGRect(x: switchlbl.left + 50, y: slidetlbl.bottom + 50, width: view.width-40, height: 30)
        
        myProgress.frame = CGRect(x: 100, y: myStepper.bottom + 30, width: view.width, height: 40)
        
    }
    @objc func changeStep(){
        stplbl.text = "\(Int(myStepper.value))"
    }
    
    @objc func changedSlide(){
        slidetlbl.text = "\(Int(mySlider.value))"
    }
}
