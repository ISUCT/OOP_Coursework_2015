package ru.java2e;

import java.awt.Image;
import java.awt.Rectangle;
import java.awt.event.KeyEvent;

import javax.swing.ImageIcon;


public class Player {
	
	public static final int MAX_V = 100;  //макс скорость = 100 пикс за обновление
	public static final int MAX_TOP = 10;  // макс координата верхнего края экрана
	public static final int MAX_BOTTOM = 450;  // предельная коор-та нижнего края экрана

	
	Image img_c = new ImageIcon ("res/2.png").getImage();
	Image img_l = new ImageIcon ("res/3.png").getImage();
	Image img_r = new ImageIcon ("res/4.png").getImage();
	
	Image img = img_c;
	
	public Rectangle getRect() {
		return new Rectangle(x, y, 330, 90 );
	}
	
	int v = 0;
	int dv = 0;
	
	int s = 0;
	
	int x = 30;
	int y = 100;
	int dy = 0;
	

	int layer1 = 0;
	int layer2 = 1200;
	
	
	
	public void move() {
		s += v; // весь путь
		v += dv;  // плюс ускорение = нова скорость
		if (v <= 0) v = 0;    // если скорость стала отрицательная, скорость = 0
		if (v >= MAX_V) v = MAX_V;
		
		y -= dy;
		if (y <= MAX_TOP) y = MAX_TOP;    //если у выше, че верх граница, у = max_top
		if (y >= MAX_BOTTOM) y = MAX_BOTTOM;
		
		if (layer2 - v <=0) {
			layer1 = 0;
			layer2 = 1200;
		} else {
		
		layer1 -= v;
		layer2 -= v;
		}
		
	}
	

public void keyPressed(KeyEvent e) {
	int key = e.getKeyCode();
	if (key == KeyEvent.VK_RIGHT) {
		dv = 5;
	
	}
	if (key == KeyEvent.VK_LEFT) {
		dv = -5;
	}
	if (key == KeyEvent.VK_UP) {
		dy = 10;
		img = img_l;
	}
	if (key == KeyEvent.VK_DOWN) {
		dy = -10;
		img = img_r;
	}
	
}
public void keyReleased(KeyEvent e) {
	int key = e.getKeyCode();
	
	if (key == KeyEvent.VK_RIGHT || key == KeyEvent.VK_LEFT) {
		dv = 0;
	
	}
	if (key == KeyEvent.VK_UP || key == KeyEvent.VK_DOWN) {
		dy = 0;
		img = img_c;
	}
}
}

