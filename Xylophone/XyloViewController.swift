
import UIKit
import AVFoundation

class XyloViewController: UIViewController, AVAudioPlayerDelegate {
    
    
    @IBOutlet weak var imgBackground: UIImageView!
    
    var audioplayer : AVAudioPlayer!
    var selectedSoundFileName : String =  ""
    let soundArray = ["note1","note2", "note3", "note4","note5", "note6", "note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imgBackground.image = UIImage(named: "xylo")
        
    }
    
    

    @IBAction func notePressed(_ sender: UIButton) {
        sender.pulsate()
        
        
        
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
        
        
    }
    
    
    func playSound(){
        
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioplayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
            
        catch{
            print(error)
        }
        audioplayer.play()
        
        
    }
    
    
    
}

