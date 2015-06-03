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
import javax.swing.*;
import java.io.*;
import javax.swing.filechooser.FileNameExtensionFilter;
 
public class Message2File {
    public static void main(String[] args) {
       
        FileNameExtensionFilter filter = new FileNameExtensionFilter("*.TXT","*.*");
        JFileChooser fc = new JFileChooser();
        fc.setFileFilter(filter);
        if ( fc.showSaveDialog(null) == JFileChooser.APPROVE_OPTION ) {
            try ( FileWriter fw = new FileWriter(fc.getSelectedFile()) ) {
                fw.write("Blah blah blah...");
            }
            catch ( IOException e ) {
                System.out.println("Всё погибло!");
            }
        }
    }
}