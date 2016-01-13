//
//  ViewController.swift
//  Swift Reproductor
//
//  Created by Gerardo Valencia on 1/12/16.
//  Copyright © 2016 Gerardo Valencia. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var Titulo: UILabel!
    @IBOutlet weak var Slider: UISlider!
    
    var colorAleatorio = Color()
    
    var banderauno = 0
    var banderados = 0
    var banderatres = 0
    var banderacuatro = 0
    var banderacinco = 0
    var anterior = 0
    var actual = 0
    
    //Uno:Butterfly
    //Dos:Ink
    //Tres:Jenova
    //Cuatro:RedBull
    //Cinco:SCOM
    
    @IBAction func Volumen(sender: UISlider) {
        
        let valor = Slider.value
        
        if reproductorUno.playing
        {
            reproductorUno.volume = valor
        }
        else if reproductorDos.playing
        {
            reproductorDos.volume = valor
        }
        else if reproductorTres.playing
        {
            reproductorTres.volume = valor
        }
        else if reproductorCuatro.playing
        {
            reproductorCuatro.volume = valor
        }
        else if reproductorCinco.playing
        {
            reproductorCinco.volume = valor
        }
        
    }
   
    @IBAction func Uno() {
        
        view.backgroundColor = colorAleatorio.colores[4]
        imagen.image = UIImage(named: "DigimonAdventure.jpg")
        Titulo.text = "Butterfly - Digimon Adventure"
        
        banderauno = 1
        banderados = 0
        banderatres = 0
        banderacuatro = 0
        banderacinco = 0
        
        reproductorUno.play()
        reproductorDos.stop()
        reproductorDos.currentTime = 0.0
        reproductorTres.stop()
        reproductorTres.currentTime = 0.0
        reproductorCuatro.stop()
        reproductorCuatro.currentTime = 0.0
        reproductorCinco.stop()
        reproductorCinco.currentTime = 0.0
        
    }

    @IBAction func Dos() {
        
        view.backgroundColor = colorAleatorio.colores[1]
        imagen.image = UIImage(named: "GhostStories.jpg")
        Titulo.text = "Ink - Coldplay"
        
        banderauno = 0
        banderados = 1
        banderatres = 0
        banderacuatro = 0
        banderacinco = 0
        
        reproductorDos.play()
        reproductorUno.stop()
        reproductorUno.currentTime = 0.0
        reproductorTres.stop()
        reproductorTres.currentTime = 0.0
        reproductorCuatro.stop()
        reproductorCuatro.currentTime = 0.0
        reproductorCinco.stop()
        reproductorCinco.currentTime = 0.0
        
    }
    @IBAction func Tres() {
        
        view.backgroundColor = colorAleatorio.colores[3]
        imagen.image = UIImage(named: "FinalFantasy7.jpg")
        Titulo.text = "Jenova - Final Fantasy VII"
        
        banderauno = 0
        banderados = 0
        banderatres = 1
        banderacuatro = 0
        banderacinco = 0
        
        reproductorTres.play()
        reproductorDos.stop()
        reproductorDos.currentTime = 0.0
        reproductorUno.stop()
        reproductorUno.currentTime = 0.0
        reproductorCuatro.stop()
        reproductorCuatro.currentTime = 0.0
        reproductorCinco.stop()
        reproductorCinco.currentTime = 0.0
        
    }
    @IBAction func Cuatro() {
        
        view.backgroundColor = colorAleatorio.colores[2]
        imagen.image = UIImage(named: "RedBull.jpeg")
        Titulo.text = "Crash - Red Bull Batalla de Gallos"
        
        banderauno = 0
        banderados = 0
        banderatres = 0
        banderacuatro = 1
        banderacinco = 0
        
        reproductorCuatro.play()
        reproductorDos.stop()
        reproductorDos.currentTime = 0.0
        reproductorTres.stop()
        reproductorTres.currentTime = 0.0
        reproductorUno.stop()
        reproductorUno.currentTime = 0.0
        reproductorCinco.stop()
        reproductorCinco.currentTime = 0.0
        
    }
    @IBAction func Cinco() {
        
        view.backgroundColor = colorAleatorio.colores[0]
        imagen.image = UIImage(named: "GunsNRoses.jpg")
        Titulo.text = "Sweet Child O' Mine - Guns N Roses"
        
        banderauno = 0
        banderados = 0
        banderatres = 0
        banderacuatro = 0
        banderacinco = 1
        
        reproductorCinco.play()
        reproductorDos.stop()
        reproductorDos.currentTime = 0.0
        reproductorTres.stop()
        reproductorTres.currentTime = 0.0
        reproductorCuatro.stop()
        reproductorCuatro.currentTime = 0.0
        reproductorUno.stop()
        reproductorUno.currentTime = 0.0
        
    }
    
    @IBAction func Random() {
        
        var random = Int(arc4random()) % colorAleatorio.colores.count
        
        actual = random
        
        while (actual == anterior)
        {
            random = Int(arc4random()) % colorAleatorio.colores.count
            actual = random
        }
        
        anterior = actual
        
        if (random == 0)
        {
            Uno()
        }
        else if (random == 1)
        {
            Dos()
        }
        else if (random == 2)
        {
            Tres()
        }
        else if (random == 3)
        {
            Cuatro()
        }
        else if (random == 4)
        {
            Cinco()
        }
        
    }
    @IBAction func Play() {
        
        if (banderauno == 1)
        {
            reproductorUno.play()
        }
        else if (banderados == 1)
        {
            reproductorDos.play()
        }
        else if (banderatres == 1)
        {
            reproductorTres.play()
        }
        else if (banderacuatro == 1)
        {
            reproductorCuatro.play()
        }
        else if (banderacinco == 1)
        {
            reproductorCinco.play()
        }
        
    }
    @IBAction func Pause() {
        
        if reproductorUno.playing
        {
            reproductorUno.pause()
        }
        else if reproductorDos.playing
        {
            reproductorDos.pause()
        }
        else if reproductorTres.playing
        {
            reproductorTres.pause()
        }
        else if reproductorCuatro.playing
        {
            reproductorCuatro.pause()
        }
        else if reproductorCinco.playing
        {
            reproductorCinco.pause()
        }
        
    }
    @IBAction func Stop() {
        
        if reproductorUno.playing
        {
            reproductorUno.stop()
            reproductorUno.currentTime = 0.0
        }
        else if reproductorDos.playing
        {
            reproductorDos.stop()
            reproductorDos.currentTime = 0.0
        }
        else if reproductorTres.playing
        {
            reproductorTres.stop()
            reproductorTres.currentTime = 0.0
        }
        else if reproductorCuatro.playing
        {
            reproductorCuatro.stop()
            reproductorCuatro.currentTime = 0.0
        }
        else if reproductorCinco.playing
        {
            reproductorCinco.stop()
            reproductorCinco.currentTime = 0.0
        }
    }
    
    var reproductorUno:AVAudioPlayer!
    var reproductorDos:AVAudioPlayer!
    var reproductorTres:AVAudioPlayer!
    var reproductorCuatro:AVAudioPlayer!
    var reproductorCinco:AVAudioPlayer!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let sonidoUnoURL = NSBundle.mainBundle().URLForResource("Butterfly", withExtension: "mp3")
        do{
            try reproductorUno = AVAudioPlayer(contentsOfURL: sonidoUnoURL!)
            
        }catch{
            print("Error")
        }
        
        let sonidoDosURL = NSBundle.mainBundle().URLForResource("Ink", withExtension: "mp3")
        do{
            try reproductorDos = AVAudioPlayer(contentsOfURL: sonidoDosURL!)
            
        }catch{
            print("Error")
        }
        
        let sonidoTresURL = NSBundle.mainBundle().URLForResource("Jenova", withExtension: "mp3")
        do{
            try reproductorTres = AVAudioPlayer(contentsOfURL: sonidoTresURL!)
            
        }catch{
            print("Error")
        }
        
        let sonidoCuatroURL = NSBundle.mainBundle().URLForResource("RedBull", withExtension: "mp3")
        do{
            try reproductorCuatro = AVAudioPlayer(contentsOfURL: sonidoCuatroURL!)
            
        }catch{
            print("Error")
        }
        
        let sonidoCincoURL = NSBundle.mainBundle().URLForResource("SCOM", withExtension: "mp3")
        do{
            try reproductorCinco = AVAudioPlayer(contentsOfURL: sonidoCincoURL!)
            
        }catch{
            print("Error")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

