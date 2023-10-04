function balanceStatements(list){
  let arr  = list.split`,`.filter(v=>/^.+ \d+ \d*\.\d+ \w$/.test(v.trim())).map(v=>v.trim())
  let filtred = list.split`,`.filter(v=>!/^.+ \d+ \d*\.\d+ \w$/.test(v))
  let b = Math.round(arr.filter(v=>/^.+ \d+ \d*\.\d+\ B$/.test(v)).reduce((a,b)=>{
    b=b.split` `;
    return a+(b[1]*b[2])
  },0))
  let s = Math.round(arr.filter(v=>/^.+ \d+ \d*\.\d+ S$/.test(v)).reduce((a,b)=>{
    b=b.split` `;
    return a+(b[1]*b[2])
  },0))
  filtred=filtred.filter(v=>v).map(v=>v.trim())
  return `Buy: ${b} Sell: ${s}${filtred.length>0?`; Badly formed ${filtred.length}: ${filtred.join` ;`} ;`:''}`
}
