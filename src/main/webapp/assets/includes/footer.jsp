<%@ page language="java" pageEncoding="UTF-8"%>
<div id="footer">
    <div class="span pull-right">
        <span class="go-top"><i class="icon-arrow-up"></i></span>
    </div>
</div>
	
	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="<%=basePath%>assets/js/bootstrap-checkbox-radio-switch.js"></script>
	
	<!--  Charts Plugin -->
	<script src="<%=basePath%>assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="<%=basePath%>assets/js/bootstrap-notify.js"></script>
    
    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="<%=basePath%>assets/js/light-bootstrap-dashboard.js"></script>
	
	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="<%=basePath%>assets/js/demo.js"></script>
	
	<script type="text/javascript">
    	$(document).ready(function(){
        	
        	demo.initChartist();
        	
        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."
            	
            },{
                type: 'info',
                timer: 4000
            });
            
    	});
	</script>
    