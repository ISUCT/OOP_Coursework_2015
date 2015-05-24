/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

/**
 *
 * @author AlexBo$$
 */

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
 public class VoronCalc extends JFrame {
   private int voron = 0;
   private JLabel countLabel;
   private JButton addCrow;
   private JButton removeCrow;
   public VoronCalc() {
     super("Crow calculator");
     setDefaultCloseOperation(EXIT_ON_CLOSE);
     /* Подготавливаем компоненты объекта  */
     countLabel = new JLabel("Crows:" + voron);
     addCrow = new JButton("Add Crow");
     removeCrow = new JButton("Remove Crow");
     /* Подготавливаем временные компоненты  */
     JPanel buttonsPanel = new JPanel(new FlowLayout());
     /* Расставляем компоненты по местам  */
     add(countLabel, BorderLayout.NORTH); /* О размещении компонент поговорим позже  */
     buttonsPanel.add(addCrow);
     buttonsPanel.add(removeCrow);
     add(buttonsPanel, BorderLayout.SOUTH);
     initListeners();
   }
   private void initListeners() {
     addCrow.addActionListener(new ActionListener() {
       public void actionPerformed(ActionEvent e) {
         voron = voron + 1;   /* Добавляем одну ворону  */
         updateCrowCounter(); /* Сообщаем аппликации, что количество ворон изменилось  */
       }
     });
     removeCrow.addActionListener(new ActionListener() {
       public void actionPerformed(ActionEvent e) {
         if (voron > 0) {
           voron = voron - 1;
           updateCrowCounter(); /* Сообщаем аппликации, что количество ворон изменилось  */
         }
       }
     });
   }
   private void updateCrowCounter() {
     countLabel.setText("Crows:" + voron);
   }
   public static void main(String[] args) {
     VoronCalc app = new VoronCalc();
     app.setVisible(true);
     app.pack(); /* Эта команда подбирает оптимальный размер в зависимости от содержимого окна  */
   }
 }
