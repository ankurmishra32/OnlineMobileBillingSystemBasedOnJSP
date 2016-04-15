<%@ include file="noCache.jsp"%>
<%if(session.isNew())
{response.sendRedirect("login.jsp");}
else
{session.invalidate();
response.sendRedirect("login.jsp");}%>

