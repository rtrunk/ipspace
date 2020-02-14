**Excercise 1:**

## Proposed Web-based Photo Album

   What services should the public cloud deployment offer to the customers?

The project will create a web based photo album application that will allow users to upload or download photographs (in any format), organize them into albums, and share them with other users. Users will be authenticated by a user database that is synced to an on-premises database.

 - How will the users consume those services? Will they use Internet access or will you have to provide a more dedicated connectivity solution?

Users will access the application via the Internet (https).  the application will also connect to an on-premises database via a VPN connection.  Administrators will maintain the website via the VPN connection

-   Identify the data needed by the solution you're deploying. What data is shared with other applications? Where will the data reside?

Photographs will be stored in a cloud-based database with blob storage.  The web app will read and write to the database.  The database will also contain a table of users, which is synchronized to the on-premises database.

-   What are the security requirements of your application?

Only authenticated users (and administrators) can access the web interface (via a login screen).  No access from the Internet to the database directly is permitted.  VPN users have full access to the database and web application.

-   What are the high availability requirements?

The database will have a replica in a different region.  In the event of the primary region failure, the infrastructure will be rebuilt in the secondary region via scripts.

-   Do you have to provide connectivity to your on-premises data center? If so, how will you implement it?

The on premises database will be connected via a point to point VPN.  Access control lists will restrict access to the on-premise data center.

-   Do you have to implement connectivity to other (customer) sites? If so, how will you implement it?

Not in this application.