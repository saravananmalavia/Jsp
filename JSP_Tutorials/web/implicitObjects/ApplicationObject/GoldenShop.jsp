<body>                                      <!-- static HTML content -->
  <h2 align="center"><font color="red">Gold Shop</font></h2>
  <h3 align="center"><font color="blue"><u>Abids, Hyderabad</u></font></h3>
 
  <%	            // extracting gold and silver weights from client HTML
    String goldstr = request.getParameter("goldbox");
    String silverstr = request.getParameter("silverbox");
            // parse the strings to data types
    double goldweight = Double.parseDouble(goldstr);
    double silverweight = Double.parseDouble(silverstr);
            /* extract standard gold and silver rates from  */
    Object obj1 = application.getAttribute("stdgoldrate");  // application object set earlier by Association.jsp
    String s1 = (String) obj1;
    int stdgold = Integer.parseInt(s1);
 
    Object obj2 = application.getAttribute("stdsilverrate");
    Integer i1 = (Integer) obj2;
    int stdsilver = i1.intValue();
  %>
                    <%-- Prepare and send response using Expression --%>
  Weight of gold ornament: <%= goldweight %> gms. and its cost is Rs.<%= goldweight*stdgold %>. It is 22 ct. gold.<br>
 
  Weight of silver article: <%= silverweight +"gms." %> and its cost is <%= "Rs." + silverweight*stdsilver %>. It is pure sivler. <br>
 
  Total cost Rs. <% out.println((goldweight*stdgold) + (silverweight*stdsilver)); %> with no tax included. <br> <br>
 
   It is your shop. Please visit again. Get discounts and gifts for coming Pongal festival.
 
</body>