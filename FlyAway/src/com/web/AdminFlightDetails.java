package com.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Airlines;
import com.entity.Flights;

@WebServlet("/AdminFlightDetails")
public class AdminFlightDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public AdminFlightDetails() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Flights f1=new Flights();
		Flights f2=new Flights();
		Flights f3=new Flights();
		List<Flights> l=new ArrayList<>();
		l.add(f1);
		l.add(f2);
		l.add(f3);
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
