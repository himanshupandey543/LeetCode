class Solution:
    def generateParenthesis(self, n: int) -> list[str]:
        if n==1: return["()"]
        n-=1
        res=[]
        def dfs(o,c,s):
            if not o and not c:
                res.append(s+")")
                return
            if o>0:
                dfs(o-1,c,s+"(")
            if c>=o:
                dfs(o,c-1,s+")")
        dfs(n,n,"(")
        return res