var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
  if (line != "") {
    var ans = -1;
    var search_letter = line[line.length - 1];
    for (var i = 0; i < line.length - 2; i++) {
      if (line[i] === search_letter) {
        console.log(i)
        ans = i;
        break;
      }
    }

    if (ans === -1) {
      console.log(ans)
    }
  }
});
