<script>
function highlight_menu(name,color) {
	 var a = document.getElementById(name);
	a.style.color = color;
	}
</script>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}">Fast
				and Foodius</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class=" " id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="#services" href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="#about"    href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="#team"     href="#team">Team</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="#contact"  href="#contact">Contact</a></li>
					<% if (session.getAttribute("logged") == Boolean.TRUE) { %>
				     <li class="nav-item"><a class="nav-link js-scroll-trigger"  id="#logout" href="${pageContext.request.contextPath}/pages/logout.jsp " target="" >Logout</a></li>
					<% } else {%>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" id="#login"  href="${pageContext.request.contextPath}/pages/login.jsp"    target="">Login</a></li>
						 <% } %>
				</ul>	       
			</div>
		</div>
	</nav>