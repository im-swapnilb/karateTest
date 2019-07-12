function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'qa';
  }
  var config = {
    env: env,
	baseurl : 'https://jsonplaceholder.typicode.com/'

  }
  if (env == 'qa') {
    // customize
  } else if (env == 'e2e') {
    // customize
  }
  
  karate.configure('connectTimeout', 1000);
  karate.configure('readTimeout', 1000);
  return config;
}