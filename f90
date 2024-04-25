function solve(a, b) {
let h = [...a].reduce((h, c) => (h[c] =h [c] + 1 || 1,h),{});
  for(let c of b) {
    if(!h[c]) return 0;
    h[c]--;
  }
  return Object.values(h).reduce((s,n)=>s+n,0);
};
