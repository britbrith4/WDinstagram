<form method="post" action="/entries"
  <input name="authenticity_token" value="<%= form_authenticity_token %>" type ="hidden">
  
  <label for="author"> Author: </label>
  <input type="text" name="name" placeholder="Enter Author's Name">

<label for="url">  URL:</label>
<input type="text" name="url" placeholder="Enter Photo Url">
<button type="submit"> Add Entry </button>
