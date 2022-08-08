<#
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
#>

$prodMax = 0

for ($num1 = 999; $num1 -gt 0; $num1--) {
    for ($num2 = 999; $num2 -gt 0; $num2--) {
        $prod = $num1 * $num2
        $prodString = $prod.ToString().ToCharArray()
        [array]::Reverse($prodString)
        $prodString = -join($prodString)
        if ($prod.ToString() -eq $prodString) {
            if ([int]$prodString -gt [int]$prodMax) {
                $prodMax = $prodString
            }
        }
    }   
}

Write-Host $prodMax