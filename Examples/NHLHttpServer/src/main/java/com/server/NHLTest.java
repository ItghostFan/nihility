package com.server;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NHLTest extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this._handleTest(req, resp);
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this._handleTest(req, resp);
        super.doPost(req, resp);
    }

    private void _handleTest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter writer  = resp.getWriter();
        writer.println("<html><head></head><body>NHLTest</body></html>");
        writer.flush();
        writer.close();
    }
}