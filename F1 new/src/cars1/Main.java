package cars1;


import javax.swing.JFrame;




public class Main {

	public static void main(String[] args) {
		

		JFrame f = new JFrame ("Java F1");
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.setSize(1100, 600);
		f.add(new Road());
		f.setVisible(true);
		
		
	}

}
