/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication4;

import java.awt.Graphics;
import java.awt.Image;
import javax.swing.ImageIcon;
 

public class Player implements IRenderToConvas { 
    protected Image imageSrc;
 
    public int posX;
    
    public int posY;
    public int speed = 5;
    public int directionX = 0;
    public int directionY = 0;
    public int wigth = 40;
    public int height = 40;
      public int posRenderX;
      public int posRenderY;
    
    public Player() {
        String name = "/data/player.png";
        imageSrc = new ImageIcon(getClass().getResource(name)).getImage();
    }
    
     
    
    @Override
    public void render(Graphics g) {   
        g.drawImage(imageSrc, posX, posY, wigth, height,  null); 
    }
}
