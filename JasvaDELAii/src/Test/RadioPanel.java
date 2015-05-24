/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ButtonGroup;
 
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTabbedPane;
/**
 *
 * @author Alex
 */
class RadioPanel extends JPanel {
    public RadioPanel() {
        group = new ButtonGroup();
        addRadioButton("Маленький",true);
        addRadioButton("Средний", false);
        addRadioButton("Большой", false);
    }
 
    private void addRadioButton(String name, boolean active){
        final int count = countRadioButton;
        JRadioButton radioButton = new JRadioButton(name, active);
        radioButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                selection = count;
            }
        });
        group.add(radioButton);
        add(radioButton);
        countRadioButton++;
    }
 
 
    public int getSelection() {
        return selection;
    }
 
    private int selection;
    private int countRadioButton=0;
    private ButtonGroup group;
}
