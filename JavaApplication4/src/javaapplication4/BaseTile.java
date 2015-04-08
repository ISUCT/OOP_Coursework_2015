/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication4;
import java.awt.Graphics;
import java.awt.Image;
import java.util.HashMap;
import javax.swing.ImageIcon;

 


public class BaseTile implements IRenderToConvas {
   
    final public static int SIZE = 40;
    
   
    private static HashMap<String,Image> images = new HashMap<String,Image>();
    
    
    public String image;
   
    public int posX;
   
    public int posY;
    
    
    public boolean isWalkable;
    public int door = 0;
    
    public BaseTile(String image, int posX, int posY, boolean isWalkable) {
        this.image = image;
        this.posX = posX;
        this.posY = posY;
        this.isWalkable = isWalkable;
    }
     public BaseTile(String image, int posX, int posY, boolean isWalkable, int door) {
        this.image = image;
        this.posX = posX;
        this.posY = posY;
        this.isWalkable = isWalkable;
        this.door = door;
    }
    
  
    public static  BaseTile getTileById(int tileId) {
        if(tileId == 1) {
            return new BaseTile( "/data/white.png", 0, 0, false);
        }
        if(tileId == 2) {
            return new BaseTile( "/data/black.png", 0, 0, true);
        }
         if(tileId == 3) {
            return new BaseTile( "/data/door.png", 0, 0, true, 2);
        }
        if(tileId == 4) {
            return new BaseTile( "/data/door.png", 0, 0, true, 1);
        }
        return null;
        
    }
    
    @Override
    public void render(Graphics g) {   
        g.drawImage(getImage(image), posX, posY, SIZE, SIZE, null); 
    }
    
    
    public static Image getImage(String name) { 
        if(images.get(name) == null) {
            images.put(name, new ImageIcon(BaseTile.class.getResource(name)).getImage());
        } 
        return images.get(name);
    }
}

    
