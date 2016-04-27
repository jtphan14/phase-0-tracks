#Release 0

1. **What are some common HTTP status codes?**
	*404 Not Found: Requested resource is no longer available
	*403 Forbidden: Access to the resource is forbidden
	*500 Internal Server Error: Catchall of server-side error codes.
	*503: Service Unavailable: Web server is unavailable
	*504: Gateway Timeout: Network issue
2. **What is the difference between a GET request and a POST request? When might each be used?
	*GET - Requests data from a specified source
		*GET requests can be cached
		*GET requests remain in the browser history
		*GET requests can be bookmarked
		*GET requests should hever be used when dealing with servers
		*GET requests have length restrictions
		*GET requests should be used only to retrieve data
	*Post - Submits data to be processed to a specified source.
		*POST requests are never cached
		*POST request do not remain in the browser history
		*POST request cannot be bookmarked
		*POST requests have no restrictions on data length
	*GET vs Post
		*Get requests a representation from the specified resource. GET should not be used on operations that cause-side effects, such as taking actions.
		*Post submit data to be proecessed. Can create or update new resource.
3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	*A cookie is a small piece of data sent from a website and stored in the user's web browser. Every time the user goes back to the website, the cookie is sent back the website to notify server of previous activity.