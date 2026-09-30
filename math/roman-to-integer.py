class Solution:
    def romanToInt(self, s: str) -> int:
        def value(c):
            if(c=='I'):
                return 1
            elif(c=='V'):
                return 5
            elif(c=='X'):
                return 10
            elif(c=='L'):
                return 50
            elif(c=='C'):
                return 100
            elif(c=='D'):
                return 500
            else:
                return 1000
        ans=0
        for i in range(len(s)):
            current=value(s[i])
            if i+1<len(s) and current<value(s[i+1]):
                ans-=current
            else:
                ans+=current
        return ans
                                
