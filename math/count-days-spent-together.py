class Solution:
    def countDaysTogether(self, arriveAlice: str, leaveAlice: str, arriveBob: str, leaveBob: str) -> int:
        def f(s):
            m,q=int(s[:2]),int(s[3:])
            return(275*m)//9-2*((m+9)//12)+q-30
        return max(0,min(f(leaveAlice),f(leaveBob))-max(f(arriveAlice),f(arriveBob))+1)