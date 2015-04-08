/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Result;

import javaapplication4.Game;

/**
 *
 * @author мвидео
 */
public class Result {
    
    public static void main(String[] args) {
        
        Game game = new Game();
        game.start();
        
        javax.swing.JFrame f =  new javax.swing.JFrame(); 
        f.setLayout(null);
        f.setDefaultCloseOperation( javax.swing.WindowConstants.EXIT_ON_CLOSE );
        f.setResizable(false);       
       
        game.getCanvas().setBounds(0, 0, 640, 640);
        
        f.add(game.getCanvas()); 
        f.setTitle("Launcher");
        f.setBounds(300,300,640,480);    
        f.setVisible(true);
        
    }
}

    

