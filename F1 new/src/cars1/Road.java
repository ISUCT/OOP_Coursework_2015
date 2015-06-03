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
	
	Timer mainTimer = new Timer(20, this);//������ ������ 20 ������� ��������� ����� ActionPerformed � ������� this, ����� ��������� ��������� actionListener
	

	Image img = new ImageIcon ("res/doroga.png").getImage();
	
	Player p = new Player();//���������� ���������
	
	
	Thread enemiesFactory = new Thread(this);// ���� ����� ������� ������, ���������� ����������� � ��� ����������, ��������� ������
	//�����, ��� ����� ������� � ������ run, � ������� �������(� ������), ������� ��������� ��������� runnable
	
	
	
	List<Enemy> enemies  = new ArrayList<Enemy>();//������ ������ "�����" = ������ ������
	
	
	public Road() {
		mainTimer.start();
		enemiesFactory.start();//����� ������ ������
		
		addKeyListener (new MyKeyAdapter());//keyListener - �����, ������ ���������� keyListener.����� adapter, ��� ��� ������ �� ��������� ������ � ������(������� � ���������� �������)
		setFocusable(true);//������������ �� ������
		
	} 
	
	private class MyKeyAdapter extends KeyAdapter {
		public void keyPressed (KeyEvent e) {//����� keypressed ��������� keyEvent e
			p.keyPressed(e);// ��� ������� ������� ������ ���������
			
		}
public void keyReleased (KeyEvent e) {
			p.keyReleased(e);  
		}
	}
	
	public void paint (Graphics g) {
		g = (Graphics2D) g;//��������������� ���
		g.drawImage(img, p.layer1, 0, null);//������ ���� 1
		g.drawImage(img, p.layer2, 0, null);//��� ���� 2
		g.drawImage(p.img, p.x, p.y, null);
		
		double v = (200/Player.MAX_V) * p.v;//������� �������� � ��/�. 200 ����� �� ���� ��������, �������� �� �������� � ��������
		g.setColor(Color.BLACK);//����� ���� ������
		Font font = new Font ("Arial", Font.ITALIC, 20);//������� ������ ������ ����(��� ������, �����, ������)
		g.setFont(font);//������������� �����
		g.drawString("��������: " + v + " ��/�", 100, 30);//������ ������ ��������
		
		
		Iterator<Enemy> i = enemies.iterator();//�����, ��� ��������� ����������� �� ���������
		while(i.hasNext()) {//���� ���������� ����.�������� ��������, �������� ����� ��������� ������ ���� � ������� ������� ��-� ���������
			Enemy e = i.next();
			if (e.x >= 2400 || e.x <= -2400) {//���� ���� ����� �� ������� ������ �� 240 �������� ������ � �����, ���� ���������
				i.remove();
			} else {
			e.move();	
			
			g.drawImage(e.img, e.x,  e.y,  null);//������ �����
			
		}
		}
	}
	
	public void actionPerformed(ActionEvent e) {//����� ��������� ������ 20 ������� ��������
		p.move();
		repaint();
		testCollisionWithEnemies();//�������� ������������ ������ 20 �������
		testWin();
		
		
	}
		private void testWin() {//����� ����� ��������
		
			if (p.s > 25000) {
				JOptionPane.showMessageDialog(null, "�� ����������!");
				System.exit(0);
			}
		
	}

		private void testCollisionWithEnemies()  {//����� �������� ������������
		
			Iterator<Enemy> i = enemies.iterator();//������������� ���������
			while(i.hasNext()) {//���� ���� ���� �������
				Enemy e = i.next();//�������� ��������� ������ ���������
				if (p.getRect().intersects(e.getRect())) {//���� ������������ ������ ���������� ������-� ����� � ������������� intersects
					JOptionPane.showMessageDialog(null, "�� ���������!");//����� ���������
					System.exit(1);//����� �� ����������
					
				}
			}
		}	

	@Override
	public void run() {//��� ������� ������. 
	
		while(true) {//��������� ������ ���������� ��������
			Random rand = new Random();//������� ������ ������ ������
			try {
				Thread.sleep(rand.nextInt(2000));//����������� �����. ������ �� ���� ���������� ������� �� 0 �� 2000 �������
				enemies.add(new Enemy(1200, //���������� � ��������� ������ ����� � �����������, � = 1200, � �������� �� 0 �� 600, �������� �������� �� 0 �� 60, this-������ ������
						rand.nextInt(600), 
						rand.nextInt(60), 
						this));
				
				
			} catch (InterruptedException e) {//��������� ����������
				
				e.printStackTrace();
			}
			
		}
		
	}
}
 