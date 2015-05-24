/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kursach;

/**
 *
 * @author Alex
 */

    import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import java.awt.event.ItemListener;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.swing.AbstractButton;
import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.border.Border;
import javax.swing.event.ChangeListener;

public class WaterMachine {

  public static void main(String args[]) {
    // Создадим хеш-карточку
Map<String, Integer> hm = new HashMap<String, Integer>();

// Помещаем данные на карточку
hm.put("Васька", new Integer(5));
hm.put("Мурзик", new Integer(8));
hm.put("Рыжик", new Integer(12));
hm.put("Барсик", new Integer(5));

// Получаем набор элементов
Set<Map.Entry<String, Integer>> set = hm.entrySet();

// Отобразим набор
for (Map.Entry<String, Integer> me : set) {
	System.out.print(me.getKey() + ": ");
	System.out.println(me.getValue());
}

// Добавляем значение
int value = hm.get("Рыжик");
hm.put("Рыжик", value + 3);
System.out.println("У Рыжика стало " + hm.get("Рыжик"));
  }
}
