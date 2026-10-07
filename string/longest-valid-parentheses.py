class Solution:
    def longestValidParentheses(self, s: str) -> int:
        stack, answer = [-1], 0
        for i, ch in enumerate(s): stack.append(i) if ch == '(' else stack.pop(); stack.append(i) if not stack else None; answer = max(answer, i - stack[-1])
        return answer 