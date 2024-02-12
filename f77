howManyBees = function(hive) {
  if (hive === null) {
    return 0
  } 
  if (!hive.length) {
    return 0
  } 
  let result = 0
  for (let i = 0; i < hive.length; i++){
    for (let j = 0; j < hive[0].length - 2; j++){
      if (hive[i][j] === 'b' && hive[i][j + 1] === 'e' && hive[i][j + 2] === 'e') result++
      if (hive[i][j] === 'e' && hive[i][j + 1] === 'e' && hive[i][j + 2] === 'b') result++ 
    }
  }
  for (let i = 0; i < hive[0].length; i++){
    for (let j = 0; j < hive.length - 2; j++){
      if (hive[j][i] === 'b' && hive[j + 1][i] === 'e' && hive[j + 2][i] === 'e') result++
      if (hive[j][i] === 'e' && hive[j + 1][i] === 'e' && hive[j + 2][i] === 'b') result++
       
    }
  }
  return result
}
