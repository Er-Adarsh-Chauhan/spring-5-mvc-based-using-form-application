<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>

    <html>

    <head>
    	<style type="text/css">
    		.content{
    					text-align:center;
    		}   	
    	</style>
        <title>Customer Confirmation</title>
    </head>

    <body>
    	<div class="content">

		        The customer is confirmed: ${customer.firstName} ${customer.lastName}
		
		        <br><br> Free passes: ${customer.freePasses}
		
		        <br><br> Email: ${customer.email}
		
		        <br><br> Postal Code: ${customer.postalCode}
		</div>
    </body>

    </html>