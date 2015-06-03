package cars1;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.Timer;

public class Road extends JPanel implements ActionListener, Runnable {
	
	Timer mainTimer = new Timer(20, this);//таймер каждые 20 милисек выполняет метод ActionPerformed у объекта this, котор реализует интерфейс actionListener
	

	Image img = new ImageIcon ("res/doroga.png").getImage();
	
	Player p = new Player();//приведение переменнх
	
	
	Thread enemiesFactory = new Thread(this);// поле поток Фабрика врагов, работающий параллельно с осн программой, создающий врагов
	//поток, код котор записан в методе run, у данного объекта(у дороги), которая реализует интерфейс runnable
	
	
	
	List<Enemy> enemies  = new ArrayList<Enemy>();//список врагов "Враги" = массив врагов
	
	
	public Road() {
		mainTimer.start();
		enemiesFactory.start();//старт потока врагов
		
		addKeyListener (new MyKeyAdapter());//keyListener - класс, реализ интерефейс keyListener.класс adapter, где все методы по умолчанию реализ в пустые(нажатие и отпускание клавиши)
		setFocusable(true);//фокусируемся на дороге
		
	} 
	
	private class MyKeyAdapter extends KeyAdapter {
		public void keyPressed (KeyEvent e) {//метод keypressed принимает keyEvent e
			p.keyPressed(e);// при нажатии клавиши машина реагирует
			
		}
public void keyReleased (KeyEvent e) {
			p.keyReleased(e);  
		}
	}
	
	public void paint (Graphics g) {
		g = (Graphics2D) g;//преобразовываем тип
		g.drawImage(img, p.layer1, 0, null);//рисуем слой 1
		g.drawImage(img, p.layer2, 0, null);//рис слой 2
		g.drawImage(p.img, p.x, p.y, null);
		
		double v = (200/Player.MAX_V) * p.v;//подсчет скорости в км/ч. 200 делим на макс скорость, умножаем на скорость в пикселях
		g.setColor(Color.BLACK);//устан цвет строки
		Font font = new Font ("Arial", Font.ITALIC, 20);//создаем объект класса фонт(имя шрифта, стиль, размер)
		g.setFont(font);//устанавливаем шрифт
		g.drawString("Скорость: " + v + " км/ч", 100, 30);//рисуем строку скорости
		
		
		Iterator<Enemy> i = enemies.iterator();//метод, кот позволяет пробежаться по коллекции
		while(i.hasNext()) {//пока существует след.эелемент коллеции, создадим новый экземпляр класса Враг и возьмем текущий эл-т коллекции
			Enemy e = i.next();
			if (e.x >= 2400 || e.x <= -2400) {//если враг уехал за границу экрана на 240 пикселей вправо и влево, враг удаляется
				i.remove();
			} else {
			e.move();	
			
			g.drawImage(e.img, e.x,  e.y,  null);//рисуем врага
			
		}
		}
	}
	
	public void actionPerformed(ActionEvent e) {//метод проверяет каждые 20 милисек действия
		p.move();
		repaint();
		testCollisionWithEnemies();//проверка столкновений каждые 20 милисек
		testWin();
		
		
	}
		private void testWin() {//метод теста выигрыша
		
			if (p.s > 25000) {
				JOptionPane.showMessageDialog(null, "Вы выигралиии!");
				System.exit(0);
			}
		
	}

		private void testCollisionWithEnemies()  {//метод проверки столкновений
		
			Iterator<Enemy> i = enemies.iterator();//просматриваем коллекцию
			while(i.hasNext()) {//пока есть след элемент
				Enemy e = i.next();//получаем очередной объект коллекции
				if (p.getRect().intersects(e.getRect())) {//если прямугольник плэера пересекает прямог-к врага с помощьюметода intersects
					JOptionPane.showMessageDialog(null, "Вы проиграли!");//появл сообщение
					System.exit(1);//выход из приложения
					
				}
			}
		}	

	@Override
	public void run() {//для второго потока. 
	
		while(true) {//создавать врагов бесконечно рандомно
			Random rand = new Random();//создаем объект класса рандом
			try {
				Thread.sleep(rand.nextInt(2000));//статический метод. заснем на случ промежуток времени от 0 до 2000 милисек
				enemies.add(new Enemy(1200, //добавление в коллекцию нового врага с параметрами, х = 1200, у рандомно от 0 до 600, скорость рандомно от 0 до 60, this-данная дорога
						rand.nextInt(600), 
						rand.nextInt(60), 
						this));
				
				
			} catch (InterruptedException e) {//обраюотка исключений
				
				e.printStackTrace();
			}
			
		}
		
	}
}
 