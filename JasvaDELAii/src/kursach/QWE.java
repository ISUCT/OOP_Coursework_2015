/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kursach;

import java.util.ArrayList;

/**
 *
 * @author AlexBo$$
 */
public class QWE {
    
    public float singleValue (double a, double b){
        float one = (float) a;
        float ty = (float) b; 
        float y = one+ty;
        return y;        
    }
    
    public  ArrayList<Float> tor(double a, double b){
        ArrayList<Float> y= new ArrayList<Float>();
//        double a = 2;
//        double b = 4;
        y.add(singleValue(a, b));
        return y;            
    }
    
    public static void main (String[] args) {
    		QWE my = new QWE ();
    		ArrayList<Float> res=my.tor(3,5);
    		for(int i=0; i<res.size(); i=i+1){
                String myStr = String.format("результат вычислений для x=%,.0f",res.get(i));
    		System.out.println(myStr);
    		}
    	}   



    
    
    

}