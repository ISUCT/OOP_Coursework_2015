package cars1;


import java.awt.Image;
import java.awt.Rectangle;
import java.awt.event.KeyEvent;

import javax.swing.ImageIcon;


public class Player {
	
	public static final int MAX_V = 100;  //макс скорость = 100 пикс за обновление
	public static final int MAX_TOP = 10;  // макс координата верхнего края экрана
	public static final int MAX_BOTTOM = 450;  // предельная коор-та нижнего края экрана

	
	Image img_c = new ImageIcon ("res/2.png").getImage();//загружаем изображ
	Image img_l = new ImageIcon ("res/3.png").getImage();
	Image img_r = new ImageIcon ("res/4.png").getImage();
	
	Image img = img_c;//текущее изображение машины, по умолчанию центральное изображ машины
	
	public Rectangle getRect() {//метод возвращает размеры прямоугольника картинки игрока
		return new Rectangle(x, y, 330, 90 );
	}
	
	int v = 0;//скорость
	int dv = 0;//ускорение
	
	int s = 0;//полный путь
	
	int x = 30;//коор-ты машины на дороге
	int y = 100;
	int dy = 0;
	

	int layer1 = 0;//слой. нач коорд-ты первого слоя
	int layer2 = 1200;
	
	
	
	public void move() {//метод движения
		s += v; // весь путь
		v += dv;  // плюс ускорение = нова скорость
		if (v <= 0) v = 0;    // если скорость стала отрицательная, скорость = 0
		if (v >= MAX_V) v = MAX_V;
		
		y -= dy;//изменение коор-т машины по оси у
		if (y <= MAX_TOP) y = MAX_TOP;    //если у выше, че верх граница, у = max_top
		if (y >= MAX_BOTTOM) y = MAX_BOTTOM;
		
		if (layer2 - v <=0) {//если коор-ты второго слоая минус приращение меньше или равно нуля, то коор-ты 1 слоя 0. коор-ты 2 = 1200
			layer1 = 0;
			layer2 = 1200;
		} else {//по-другому двигаем как обычно   зациклили слои
		
		layer1 -= v;
		layer2 -= v;//двигаес слои
		}
		
	}
	

public void keyPressed(KeyEvent e) {//метод, вызывающийся по нажатию
	int key = e.getKeyCode();//переменная keyEvent e содержит всю информ о событии. при помощи метода getkeycode узнаем инф-ю о коде клавиши, кот нажали
	
	if (key == KeyEvent.VK_RIGHT) {//ветвление
		dv = 5;//по нажатию стрелки вправо мы ускоряемся 
	
	}
	if (key == KeyEvent.VK_LEFT) {
		dv = -5;
	}
	if (key == KeyEvent.VK_UP) {//если нажата клавиша вверх, смещаем машину по оси у
		dy = 10;
		img = img_l;//изображение меняется на поворотное
	}
	if (key == KeyEvent.VK_DOWN) {
		dy = -10;
		img = img_r;
	}
	
}
public void keyReleased(KeyEvent e) {
	int key = e.getKeyCode();
	
	if (key == KeyEvent.VK_RIGHT || key == KeyEvent.VK_LEFT) {//если отпущена клавиша право, ускорение = 0
		dv = 0;
	
	}
	if (key == KeyEvent.VK_UP || key == KeyEvent.VK_DOWN) {
		dy = 0;
		img = img_c;//изображение вернулось в центр положение
	}
}
}

