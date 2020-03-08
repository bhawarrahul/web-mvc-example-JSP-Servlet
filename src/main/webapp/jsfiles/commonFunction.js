function toCamelCase(str) {
  // Lower cases the string
  return str.toLowerCase()
    // Upper Cases the first character in each group immediately following a space 
    // (delimited by spaces) 
    .replace( / (.)/g, function($1) { return $1.toUpperCase(); })
    // Removes spaces 
    .replace( / /g, '' );
}