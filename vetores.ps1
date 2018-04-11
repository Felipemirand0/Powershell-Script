#Teste vetor

#vetor
Remove-Variable vetorA

for($i = 0; $i -lt 1; $i++){write-host "Digite um vetor"; $vetorA += @(read-host) ; $vetorA[$i] = [int]$vetorA[$i] ; clear-host;}

Write-host "valor do vetor é $vetorA"

pause

Function SelectionSort( [Array]$vetorA )
{
	$vetorAl=$vetorA.length-1
	0..( $vetorAl - 1 ) | ForEach-Object {
		$min = $vetorA[ $_ ]
		$mini = $_
		( $_ + 1 )..$vetorAl | ForEach-Object {
			if( $vetorA[ $_ ] -lt $min ) {
				$min = $vetorA[ $_ ]
				$mini = $_
			}
		}
		$temp = $vetorA[ $_ ]
		$vetorA[ $_ ] = $min
		$vetorA[ $mini ] = $temp
	}
	$vetorA
}

SelectionSort($vetorA)

clear-host

Write-host "{O valor do vetor é "SelectionSort($vetorA)"}"
