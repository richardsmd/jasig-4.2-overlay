<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</div> <!-- END #content -->

<footer>
  <div id="copyright" class="container">
    <p><spring:message code="copyright" /></p>
        <p>Powered by <a href="http://www.apereo.org/cas">
            Apereo Central Authentication Service <%=org.jasig.cas.CasVersion.getVersion()%></a>
            <%=org.jasig.cas.CasVersion.getDateTime()%></p>
  </div>

  <div id = "copyright2">
      <p1>Any and all unauthorized access, attempts to access and unauthorized use of this system, data, user accounts will be tracked, monitored and may be enforced to the fullest extent Maryland Law</p1>
      <p></p>
      <p2>Copyright Maryland Transit Administration, 2016.</p2>
  </div>
</footer>

</div> <!-- END #container -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
<script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>

</body>
</html>

