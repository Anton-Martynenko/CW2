function balance(book) {
  book = book.replace(/[^\s\.0-9a-zA-Z]/g,'').split`\n`.filter(v => v);
  book[0] = (book[0] * 1).toFixed(2);
  let balance = book.map(v => v.match(/\d+\.\d+/).join``);
  let newBalance = [];
  let originalBalance = balance[0];
  for (let i = 1; i < balance.length; i++) {
    newBalance.push((originalBalance-=balance[i]).toFixed(2))
  }
  let totalExpenses = (balance[0] - newBalance[newBalance.length - 1]).toFixed(2);
  let averageExpenses = (balance.slice(1).reduce((a, b) => a + b * 1,0)/(balance.length - 1)).toFixed(2);
  let phrase = book.slice(1).map((v, i) => v.replace(/\d+\.\d+/,v => (v * 1).toFixed(2)) + ` Balance ${newBalance[i]}`);
  return [`Original Balance: ${(balance[0] * 1).
          toFixed(2)}`,...phrase,`Total expense  ${totalExpenses}`,`Average expense  ${averageExpenses}`].join`\r\n`
}
