<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.sid.PraApp.DummyDB"%>
<%
DummyDB db = new DummyDB();

	String query = request.getParameter("q");
	
	List<String> cities = db.getData(query);

	Iterator<String> iterator = cities.iterator();
	while(iterator.hasNext()) {
		String city = (String)iterator.next();
		out.println(city);
	}
%>