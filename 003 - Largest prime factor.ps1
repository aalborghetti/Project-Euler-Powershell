<#
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
#>

$div = 2
$num = 600851475143

While ($num -gt $div) {
  
  if (($num % $div) -eq 0) {
    $num /= $div
  } else {
    $div++
  }
}

Write-Host $div