var squareLoop = function (numStr) {
  var nums = []
  for (var i = 0; i < numStr.length; i++) {
    nums.push(parseInt(numStr[i], 10));
  }

  var sum = 0;

  nums.forEach(function (num) {
    sum += num * num;
  });

  return sum.toString();
}


var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
  if (line != "") {
    var prevNums = [line];

    while (1===1) {
      var newNum = squareLoop(prevNums[prevNums.length - 1]);
      if (newNum === "1") {
        console.log("1")
        break;
      } else {
        var breaker = false;
        prevNums.forEach(function (num) {
          if (num === newNum) {
            console.log("0")
            breaker = true;
          }
        });

        if (breaker) {
          break;
        }

        prevNums.push(newNum);
      }
    }
  }
});
