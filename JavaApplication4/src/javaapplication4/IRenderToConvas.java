/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication4;

import java.awt.Graphics;
 
/**
 * Интерфейс дает гарантию реализации в объекте метода обрисовки на холсте
 */
public interface IRenderToConvas {
    void render(Graphics g);
}