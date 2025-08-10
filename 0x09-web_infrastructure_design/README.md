infrastructure design 
Web server vs application server
- used for better scalability, security, and performance. Here we used 1 Web server - Nginx
- 1- Application server Node.js
- 1- DB server MongoDb and 2 - Load Balancers HAProxy
- in a cluster
- Why separate- the web handles Http requests and html,css, js files while the app server runs the business logic and processes.
- The Database server manages data storage and queries.
- why use load balancers - High availability, traffic distribution and SSL termination which is optional.
