"use strict";
exports.handler = (event, context, callback) => {
  // Extract the request from the CloudFront event that is sent to Lambda@Edge
  var request = event.Records[0].cf.request;

  // Extract the URI from the request
  var old_uri = request.uri;

  // Match any '/' that occurs at the end of a URI. Replace it with a default index
  var new_uri = old_uri.replace(/\/$/, "/index.html");

  // Log the URI as received by CloudFront and the new URI to be used to fetch from origin
  // console.log("Old URI: " + old_uri);
  // console.log("New URI: " + new_uri);

  // Replace the received URI with the URI that includes the index page
  request.uri = new_uri;

  // Return to CloudFront
  return callback(null, request);
};
