 package cars1;


import java.awt.Image;
import java.awt.Rectangle;

import javax.swing.ImageIcon;

public class Enemy {
	
	int x;
	int y;
	int v;
	Image img = new ImageIcon ("res/v.png").getImage();
	Road road;//поле дороги
	
	public Rectangle getRect() {//метод возвращает прямоугольник картинки врага
		return new Rectangle(x, y, 280, 70 );//возвращаем новый ректангл(нач точка х у, высота, ширина)
	}
	
	public Enemy(int x, int y, int v, Road road) {//конструктор класса enemy
		this.x = x;//инициализируем 
		this.y = y;
		this.v = v;
		this.road = road;
		
	}
	
	public void move() {
		x = x - road.p.v + v;//коор-та врага = х - скорость слоя(=скорость плэера) + наша скорость
		
		
	}

}
