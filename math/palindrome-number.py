class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        else:
            x=str(x)
            if x==x[::-1]:
                return True
            else:
                return False

# Synced seamlessly with LeetHub Pro
# Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
# Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna