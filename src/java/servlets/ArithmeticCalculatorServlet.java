package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ArithmeticCalculatorServlet extends HttpServlet {
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("message", "---");
        getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalculator.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String pFirst = request.getParameter("first");
        String pSecond = request.getParameter("second");
        
        if(pFirst == null || pFirst.equals("") || pSecond == null || pSecond.equals("") 
                || !Pattern.matches("^\\d+$", pFirst) || !Pattern.matches("^\\d+$", pSecond))
        {
            request.setAttribute("message", "invalid");
            getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalculator.jsp").forward(request, response);
            return;
        }
              
        int result = 0,
            first = Integer.parseInt(pFirst),
            second = Integer.parseInt(pSecond);
        
        String arithmetic = request.getParameter("arithmetic");
        if(arithmetic.equals("+"))
        {
            result = first + second;
        }
        else if(arithmetic.equals("-"))
        {
            result = first - second;
        }
        else if(arithmetic.equals("*"))
        {
            result = first * second;
        }
        else if(arithmetic.equals("%"))
        {
            result = first % second;
        }
        
        request.setAttribute("message", result);
        getServletContext().getRequestDispatcher("/WEB-INF/ArithmeticCalculator.jsp").forward(request, response);
    }
}
