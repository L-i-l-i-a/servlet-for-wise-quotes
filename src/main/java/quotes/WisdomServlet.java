package quotes;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;


public class WisdomServlet extends HttpServlet {
    private static ArrayList<String> quotes;

    public void init(ServletConfig config) {
        quotes =  new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\l.boiko\\Desktop\\project13\\src\\main\\java\\quotes\\quotes.txt"))) {
            for (String line; (line = br.readLine()) != null; ) {
              quotes.add(line);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uri = request.getRequestURI();
        System.out.println(uri);
        if (uri.equals("project13_war_exploded/Testing/randomQuotes")) {
            request.setAttribute("quote", quotes.get(ThreadLocalRandom.current().nextInt(quotes.size())));
            response.sendRedirect("firstQuotes.jsp");
        }else{
            response.sendRedirect("firstPage.jsp");
        }

    }

    public static ArrayList<String> getQuotes() {
        return quotes;
    }
}
