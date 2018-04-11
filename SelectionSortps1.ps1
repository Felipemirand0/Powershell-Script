#create a function select sort powershell

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


#include a array variable to test the function
for($i = 0; $i -lt 5; $i++){Write-host "Escreva o valor $i, para a o array "; $Arraytest += Read-host} 

# Using the function 
SelectionSort($Arraytest)