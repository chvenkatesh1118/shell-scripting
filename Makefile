help:       ##  help
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep
	
catalogue:	## installing catalogue
		@bash components/catalogue.sh
		
			
mongodb:	## installing mongosb
		@bash components/mongodb.sh
			
redis:		## installing redis
		@bash components/user.sh
			
user:	        ## installing user
		@bash components/user.sh
	
cart:   	## installing cart
		@bash components/cart.sh
	
mysql:	        ## installing mysql
		@bash components/mysql.sh
	
shipping:	## installing shipping
		@bash components/shipping.sh
	
rabbitmq:	## installing rabbitmq

		@bash components/rabbitmq.sh
payment:	## installing payment
		@bash components/payment.sh
	
frontend:	## installing frontend
		@bash components/frontend.sh

