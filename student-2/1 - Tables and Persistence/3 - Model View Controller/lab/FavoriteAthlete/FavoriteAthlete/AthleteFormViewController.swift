//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by student on 01/04/24.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var league: UITextField!
    
    @IBOutlet weak var team: UITextField!
    var athlete : Athlete?
    init?(coder:NSCoder , athlete : Athlete?){
        super.init(coder: coder)
        self.athlete = athlete
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

        // Do any additional setup after loading the view.
    }
    func updateView(){
        
    }

  
    @IBAction func Save(_ sender: Any) {
        guard let name = name.text,
              let ageString = age.text,
              let age = Int(ageString),
              let league = league.text,
              let team = team.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
    }
    
}
