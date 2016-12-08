package com.Business;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.data.FileHandler;

/**
 * Servlet implementation class List
 */
@WebServlet("/list")
public class List extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public List() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FileHandler fh = new FileHandler();
		Map<String, String> inv = new HashMap<String, String>();
		try {
			inv = FileHandler.loadFileData(fh.INVENTORY);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<String> animals = new ArrayList<String>();
		ArrayList<String> price = new ArrayList<String>();
		ArrayList<String> stock = new ArrayList<String>();


		for(int i = 0;i <= inv.size();i++){
			String temp = inv.get(i + "");
			try{
			String[] data = temp.split(fh.FILE_DELIMITER);
			request.setAttribute("animal" + i, data[0]);
			request.setAttribute("stock" + i, data[1]);
			request.setAttribute("price" + i, data[2]);
			animals.add(data[0]);
			stock.add(data[1]);
			price.add(data[2]);
			}catch(NullPointerException e){}
			
		}
		
		response.sendRedirect( "list.jsp?animal0="+animals.get(0)+"&animal1="+animals.get(1)+"&animal2="+animals.get(2)+"&animal3="+animals.get(3)
		+"&animal4="+animals.get(4)+"&animal5="+animals.get(5) 
				+ "&stock0="+stock.get(0)
				+ "&stock1="+stock.get(1)+"&stock2="+stock.get(2)+"&stock3="+stock.get(3)
				+"&stock4="+stock.get(4)+"&stock5="+stock.get(5)
				+ "&price0="+price.get(0)
				+ "&price1="+price.get(1)+"&price2="+price.get(2)+"&price3="+price.get(3)
				+"&price4="+price.get(4)+"&price5="+price.get(5)
				
				
				);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
