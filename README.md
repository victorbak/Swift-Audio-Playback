# Swift-Audio-Playback
Playing audio files with swift

# Step 1
Import AVFoundation to your desired View Controller

    import AVFoundation

# Step 2 
Write this code inside your ViewController class

    var player = AVAudioPlayer()

# Step 3
Declare a path for your desired audio file, in this case, it's an mp3 file named "juice"

    var path = Bundle.main.path(forResource: "juice", ofType: "mp3")
# Step 4
Make a button action with this code inside

    @IBOutlet weak var button: UIButton!
    var isPlaying = false
    override func viewDidLoad() {
        super.viewDidLoad()
        //Attempts to load the file
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        } catch {
            // Error: File not loaded
        }

    }
    
# Step 5
Make a function that will toggle your play button into a pause button.
This depends on whether the audio is playing or not

    @IBAction func btnPlay(_ sender: Any) {
        //changes button to a play or pause button if sound is playing or not
        if isPlaying == false {
            player.play()
            button.setTitle("Pause", for: .normal)
            isPlaying = true
        } else {
            player.pause()
            button.setTitle("Play", for: .normal)
            isPlaying = false
        }
    }
