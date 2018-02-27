/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.brendanjbishop.project4.controller;

import com.brendanjbishop.project4.models.Product;
import com.brendanjbishop.project4.models.ProductService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bren
 */
public class ProductController extends HttpServlet {
    private static final String RESULT_PAGE = "results.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String c = request.getParameter("id");
        if(c.isEmpty()|| c.length() == 0){
            //return all products
        } else {
            //find product
        }
        
        String search = request.getParameter("search");
        if(search.isEmpty()|| search.length() == 0){
            
        } else {
            //find product
        }
        
        ProductService ps = new ProductService();
        
        request.setAttribute("products", ps);
        RequestDispatcher view = request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductService productService = new ProductService();

        RequestDispatcher dispatcher = null;

        String id = request.getParameter("id");
        String search = request.getParameter("search");
        
        
        if (id != null) {
            Product product = productService.getProductById(id);
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("/WEB-INF/productDetail.jsp");
        } else if (search != null) {
            List<Product> productList = productService.findProducts(search);
            request.setAttribute("productList", productList);
            dispatcher = request.getRequestDispatcher("/WEB-INF/productList.jsp");
        } else {
            List<Product> productList = productService.productList;
            request.setAttribute("productList", productList);
            dispatcher = request.getRequestDispatcher("/WEB-INF/productList.jsp");
        }

        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
