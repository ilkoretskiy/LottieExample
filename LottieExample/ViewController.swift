//
//  ViewController.swift
//  LottieExample
//
//  Created by Koretskiyil on 26/12/2017.
//  Copyright © 2017 ikoretskiy. All rights reserved.
//

import UIKit
import Lottie
import Foundation
import ReplayKit
import AVKit



class ViewController: UIViewController {
    var recorder : ViewRecorder!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var composition : LOTComposition = LOTComposition(name: "ver1", bundle: Bundle.main)!;
        
        var animationView = LOTAnimationView(model: composition, in: Bundle.main);
        
        self.view.addSubview(animationView)
        animationView.contentMode = .scaleToFill
        
        animationView.frame = view.frame;
        self.view.backgroundColor = UIColor.black;
        
        //animationView.loopAnimation = true;
        animationView.loopAnimation = false;
        
        replaceContour(animationView: animationView)
        
        recorder = ViewRecorder();
        
        recorder.start(view : self.view, withCallback : { (path : String?) in ()
            print("absolute path", path)
            if let path = path {
                if UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(path){
                    UISaveVideoAtPathToSavedPhotosAlbum(path, nil, nil, nil);
                } else {
                    print ("no access to camera roll")
                }
            }
        })
        
        animationView.play( completion: {  (result : Bool) in ()
            self.recorder.stop();
            print("Complete");
        })
    }
    
    func replaceContour(animationView : LOTAnimationView) {
        var x1 = -10;
        var x2 = 10;
        
        var y1 = -956;
        var y2 = 956;
        
        var ar : [[Float]] = [
            //[63.0, -937.5],
            [0.0, 0.0],
            [-18.0, -917.0],
            [-53.5, -869.5],
            [-134.5, -839.0],
            [-180.5, -766.5],
            [-158.0, -709.0],
            [-127.0, -681.0],
            [-115.0, -650.0],
            [-106.0, -635.5],
            [-135.5, -588.5],
            [-152.5, -592.5],
            [-206.5, -525.5],
            [-243.0, -470.0],
            [-246.5, -459.0],
            [-288.5, -416.5],
            [-350.345, -350.157],
            [-398.5, -243.0],
            [-458.5, -127.5],
            [-453.5, -93.5],
            [-469.0, -54.0],
            [-433.785, 31.597],
            [-422.5, 115.0],
            [-422.189, 198.24],
            [-406.5, 291.5],
            [-437.5, 480.0],
            [-393.5, 517.5],
            [-347.5, 519.0],
            [-363.0, 575.0],
            [-452.5, 739.5],
            [-414.5, 810.0],
            [-427.5, 915.5],
            [-346.0, 833.5],
            [-325.5, 818.0],
            [-290.281, 745.834],
            [-274.0, 863.5],
            [-212.867, 862.858],
            [-186.0, 881.5],
            [-158.5, 692.0],
            [-121.0, 826.0],
            [-97.5, 899.0],
            [-101.0, 983.5],
            [42.0, 979.0],
            [48.5, 885.0],
            [50.0, 946.0],
            [35.5, 908.5],
            [65.0, 981.5],
            [256.5, 985.5],
            [253.5, 913.5],
            [308.5, 727.0],
            [-103.0, 462.5],
            [-130.0, 236.0],
            [-167.0, 23.0],
            [-122.0, -27.999],
            [-80.5, -106.0],
            [7.0, -162.0],
            [47.0, -228.0],
            [126.5, -319.5],
            [221.0, -396.0],
            [200.5, -512.0],
            [277.5, -579.5],
            [735.0, -525.0],
            [750.5, -595.0],
            [657.0, -630.0],
            [486.0, -666.0],
            [351.0, -679.5],
            [209.0, -687.0],
            [184.5, -718.5],
            [171.5, -758.5],
            [158.0, -809.0],
            [125.0, -898.0]
        ]
        
        var ar_i : [[Float]] = [
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0],
            [0.0, 0.0]
        ]
        
        
        
        var newContour : [String : Any] = [
            "v" : [ [x1, y1], [x2, y1], [x2, y2], [x1, y2] ],
            //"v" : ar,
            "i" : [ [(-1.0), (1.0)],   [(-1.0),   (1.0)],   [-1.0, 1.0], [0.0, 0.0]],
            //"i" : ar_i,
            //"o" : ar_i,
            "o" : [ [(-1.0), (1.0)],   [(-1.0),   (1.0)],   [-1.0, 1.0], [0.0, 0.0]],
            "c" : false
        ]
        
        var newContour2 : [String : Any] = [
            "v" : [ [x1 - 100, y1], [x2, y1 + 100], [x2, y2 - 100], [x1, y2] ],
            "i" : [ [(-10.0), (1.0)],   [(-10.0),   (1.0)],   [-1.0, 1.0], [0.0, 0.0]],
            "o" : [ [(-1.0), (1.0)],   [(-1.0),   (1.0)],   [-1.0, 1.0], [0.0, 0.0]],
            "c" : true
        ]
        
        
        animationView.setValue(UIColor.green, forKeypath: "CONTOUR_LAYER_02.Group 1.CONTOUR_SHAPE.Fill 1.Color", atFrame: 38)
        
        animationView.setValue(newContour, forKeypath: "CONTOUR_LAYER_01.Group 1.CONTOUR_SHAPE.CONTOUR.Path", atFrame: 1)
        
        animationView.setValue(UIColor.yellow, forKeypath: "CONTOUR_LAYER_04.Group 1.CONTOUR_SHAPE.Fill 1.Color", atFrame: 69)
        
        animationView.setValue(newContour, forKeypath: "CONTOUR_LAYER_04.Group 1.CONTOUR_SHAPE.CONTOUR.Path", atFrame: 69);
        animationView.setValue(newContour, forKeypath: "CONTOUR_LAYER_05.Group 1.CONTOUR_SHAPE.CONTOUR.Path", atFrame: 69);
        animationView.setValue(newContour, forKeypath: "CONTOUR_LAYER_06.Group 1.CONTOUR_SHAPE.CONTOUR.Path", atFrame: 69);
        
        
        animationView.setValue(newContour, forKeypath: "CONTOUR_LAYER_02.Group 1.CONTOUR_SHAPE.CONTOUR.Path", atFrame: 38);
        
        animationView.setValue(newContour, forKeypath: "CONTOUR_LAYER_03.Group 1.CONTOUR_SHAPE.CONTOUR.Path", atFrame: 38);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

