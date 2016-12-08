package com.data;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class FileHandler
{

    public FileHandler() {
        
    }
    
    public static final String FILE_DELIMITER = ",";
    
    public static final String INVENTORY = "C:/Users/Ben/Desktop/inventory.txt";
    public static final String CUSTOMERS = "C:/Users/Ben/Desktop/customer.txt";
    
    
    public static Map<String, String> loadFileData(final String fileName) throws IOException {    
        String temp;
        Map<String, String> map = new HashMap<String, String>();
        try (BufferedReader bfr = new BufferedReader(new FileReader(fileName)))
        {
        	int counter = 0;
            while ((temp = bfr.readLine()) != null)
            {
                String[] data = temp.split(FILE_DELIMITER);
                
            	map.put(counter + "",temp);
            	counter++;
            	//System.out.println(map.get("Goat"));
            

            }
        }
        return map;
    }
    public static Map<String, String[]> loadFileDataCust(final String fileName) throws IOException {    
        String temp;
        Map<String, String[]> map = new HashMap<String, String[]>();
        try (BufferedReader bfr = new BufferedReader(new FileReader(fileName)))
        {
            while ((temp = bfr.readLine()) != null)
            {
                String[] data = temp.split(FILE_DELIMITER);
            
            	map.put(data[0],data);
            	System.out.println(map.get("Goat"));
            

            }
        }
        return map;
    }
    
}

