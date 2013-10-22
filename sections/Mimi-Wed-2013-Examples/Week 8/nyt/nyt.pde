// See NYT API documentation here
// http://developer.nytimes.com/docs/read/article_search_api_v2

// Make sure to paste in your API Key here
String apiKey = "YOUR API KEY HERE";

// Assuming you got the API Key for Article search, all of your search requests are going to start out with this URL String
String baseURL = "http://api.nytimes.com/svc/search/v2/articlesearch,json?q=";


void setup() {
  size(400, 400);
  JSONArray articles = getDroneArticles();
  for(int i = 0 ; i < articles.size(); i++) {
     println(articles.getJSONObject(i).getJSONObject("headline").getString("main")); 
  }
  
};

void draw() {
};

JSONArray getDroneArticles() {
  
  // Build up the request URL for your search string
  // Read the documentation on the NYT Developers site for how to construct your query string
  // http://developer.nytimes.com/docs/article_search_api/
  /*
  * QUERY NYT for Data
  * Keywords: Obama, drone
  * From Oct 20, 2013 to Oct 22, 2013
  * Query string includes the baseURL and your API key defined above
  */
  String request = baseURL + "Pakistan+drone&begin_date=20131020&end_date=20131022&api-key=" + apiKey;
  
  // Here you can start to actually dig into the data
  try {
    
    // Load the search results into a JSONObject so Processing can parse the JSON data structure
    JSONObject nytData = loadJSONObject(request);
    int results = nytData.getJSONObject("response").getJSONObject("meta").getInt("hits");
    
    // Get the "total" result number and store is an integer
    println ("There were " + results + " occurences of the term Pakistan + drone in the last 3 days");
    
    return nytData.getJSONObject("response").getJSONArray("docs");
  }
  catch (Exception e) {
    println ("There was an error parsing the JSONObject.");
  }
    return new JSONArray();
};
