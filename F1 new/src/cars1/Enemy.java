 package cars1;


import java.awt.Image;
import java.awt.Rectangle;

import javax.swing.ImageIcon;

public class Enemy {
	
	int x;
	int y;
	int v;
	Image img = new ImageIcon ("res/v.png").getImage();
	Road road;//���� ������
	
	public Rectangle getRect() {//����� ���������� ������������� �������� �����
		return new Rectangle(x, y, 280, 70 );//���������� ����� ��������(��� ����� � �, ������, ������)
	}
	
	public Enemy(int x, int y, int v, Road road) {//����������� ������ enemy
		this.x = x;//�������������� 
		this.y = y;
		this.v = v;
		this.road = road;
		
	}
	
	public void move() {
		x = x - road.p.v + v;//����-�� ����� = � - �������� ����(=�������� ������) + ���� ��������
		
		
	}

}
