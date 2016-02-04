<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<%@ page import="java.io.*,java.util.*" %>
<%-- <%
   // Get session creation time.
   Date createTime = new Date(session.getCreationTime());
   // Get last access time of this web page.
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "Welcome Back to my website";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String("userID");
   String userID = new String("ABCD");

   // Check if this is new comer on your web page.
   if (session.isNew()){
      title = "Welcome to my website";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } 
   visitCount = (Integer)session.getAttribute(visitCountKey);
   visitCount = visitCount + 1;
   userID = (String)session.getAttribute(userIDKey);
   session.setAttribute(visitCountKey,  visitCount);
%> --%>

<html>
<head>
	<link href="<c:url value="/resources/style/styles.css" />" rel="stylesheet" type="text/css" media="screen" />
	<title>login</title>
</head>
<body>
<div id="container">
	<c:set var="sessiontest" value="${sessionuser }" />
 	<c:if test="${sessiontest == 'signout'}" > 
	  <div class="login"> 	
	  		<a href="login">[LogIn]</a>
	   		<a href="register">[Sign Up]</a>
	   </div></br>
	   <div class="login">
	   		Welcome, Guest
	   </div>
	</c:if>
	
	<c:if test="${sessiontest != 'signout'}" > 
	   	<div class="login">
	   		<a href="signout">[Sign Out]</a>
	   	</div></br>
	   	<div class="login">
	   		Welcome, ${sessionuser } 
	   	</div>
	</c:if>
    <header>
		<div class="header">
			<img src="resources/images/logo.png">
	    	<h1><a href="home">E-BIZZNESS IDEA</a></h1>
	    </div>
    </header>
    <nav>
		<div class="width">
	    		<ul>
	        		<li class=""><a href="home">Home</a></li>
	        	    <li class=""><a href="navigation?value=category">Categories</a></li>
	         	   	<li><a href="navigation?value=interview">Interviews</a></li>
	          	  	<li><a href="navigation?value=article">Articles</a></li>
	          	  	<li class=""><a href="startup">StartUp</a></li>
	          	  	<li class=""><a href="navigation?value=advertisement">Advertisement</a></li>
	          	  	<li class=""><a href="navigation?value=video">Videos</a></li>
	          	 	<li class=""><a href="navigation?value=aboutus">About Us</a></li>
	          	 	<li class="end"><a href="navigation?value=contactus">Contact Us</a></li>
	        	</ul>
		</div>
    </nav>
    
	<div id="body" class="width">
	
		<section id="content">
			
			<article>
			<c:if test="${sessionuser != 'signout' }">
				You are signed in <a href="signout">Press this</a> to sign out.
			</c:if>
			<c:if test="${sessionuser == 'signout' }">
				<h3>Login Form</h3>
				<table>
					<form:form action="logged"  commandName="loginForm" modelAttribute="loginForm" method="post">
						<tr>
		                    <td>Username: </td>
		                 	<td><form:input type="text" path="username"/></td>
	 	                 	<td><form:errors path="username" cssClass="error"/></td>
	 	                </tr>
						<tr>
		                    <td>Password: </td>
		                    <td><form:input type="password" path="password"/></td>
	 	                    <td> <form:errors path="password" cssClass="error"/></td>
		                </tr>
		                <tr>
		                    <td><a href="register">Signup for free</a></td>
		                    <td align="center"><input type="submit" value="Login"/></td>
		                    <td></td>	                    
		                </tr>
					</form:form>
				 </table>
			</c:if>
			</article>
        </section> 
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="login">Import/Export</a></li>
                        <li><a href="login">Coorporates</a></li>
                        <li><a href="login">Vendors</a></li>
                        <li><a href="login">Farming</a></li>
                        <li><a href="login">Organization</a></li>
                    </ul>
                </li>
                
                <li>
                    <h4>About us</h4>
                    <ul>
                        <li class="text">
                        	<p style="margin: 0;">We are the new technology. The headquater lies in New Road, Ktm, Nepal. 
                        	The main motto of our organization is 'Lets get down to business with a eagle vision'. 					
                        	<a href="#" class="readmore">Read More</a></p>
                        </li>
                    </ul>
                </li>
                
                <li>
                	<h4>Subscribe Us</h4>
                    <ul>
                    	<li class="text">
                            <form method="get" class="subsribe" action="#" >
                                <p>
                                    <input type="text" size="31" value="Enter email to subscribe" name="s" class="s" />
                                    
                                </p>
                            </form>	
						</li>
					</ul>
                </li>
                
                <li>
                    <h4>Helpful Links</h4>
                    <ul>
                        <li><a href="#" >Farming Nepal</a></li>
                        <li><a href="#" >Corporate Business</a></li>
                        <li><a href="#" title="">Import Export Nepal</a></li>
                    </ul>
                </li>
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
	
	<footer>
        <div class="footer-content width">
            <ul>
            	<li><h4>Partners</h4></li>
                <li><a href="#">ekantipur</a></li>
                <li><a href="#">Forbes</a></li>
                <li><a href="#">BBC</a></li>
                <li><a href="#">Human Soul</a></li>
                <li><a href="#">Corporate House</a></li>
            </ul>
            
            <ul>
            	<li><h4>Branches</h4></li>
                <li><a href="#">Sydney</a></li>
                <li><a href="#">London</a></li>
                <li><a href="#">Silicon Valley</a></li>
                <li><a href="#">Bahamas</a></li>
                <li><a href="#">Jamaica</a></li>
            </ul>
            
            <ul class="endfooter">
            	<li><h4>Advertisements</h4></li>
                <li><a href="#">Job Vacancies </a></li>
                <li><a href="#">New Products </a></li>
                <li><a href="#">Technologies </a></li>
                <li><a href="#">Real States </a></li>
                <li><a href="#">Corporates </a></li>
            </ul>
            
            <div class="clear"></div>
        </div>
        <div class="footer-bottom">
        	<p>Copyright � 2014 by IT Professional. All Rights Reserved.</p>
        </div>
    </footer>
</div>
</body>
</html>
