#Calculo de IMC 

Write-host "Escreva a seguir o nome, o peso e altura de 3 pessoas" -ForegroundColor Red

Pause

Clear-host

if( ($name, $peso, $altura, $i, $a, $b, $imc) -eq "true"){

Remove-Variable name, peso, altura, i, a, b, imc}

#Coleta dados do usuário 

for($i = 0; $i -lt 1; $i++) 

{
write-host "Nome, por favor" ; $name += @(read-host); 
Write-Host "Altura, por favor"; $Altura += @(read-host); 
Write-Host "peso, Porfavor" ; $peso += @(read-host)

 clear-host
}

#Calcula IMC

for($a = 0; $a -lt [int]$name.Count; $a++)
{$IMC += @($peso[$a] / ([double]$Altura[$a] * $Altura[$a]))
$IMC[$a] = [math]::round([int]$IMC[$a],2)
}

write-host ""

for($b = 0; $b -lt [int]$IMC.Count; $b++)

{
$calculo = $IMC[$b] ; 

    if (( $calculo -gt 18) -and ($calculo -le 25)){
           Write-Host($name[$b],"seu Idice de Massa Corporea é",[math]::round([double]$IMC[$b],2)," e esta Normal" );
           
       }if(($calculo-ge 26 ) -and ($calculo -le 30)){
          Write-Host ($name[$b]," seu Indice de Massa Corporea é",[math]::round([double]$IMC[$b],2)," e voce esta Obeso");
        
            }if($calculo -gt 30){
           Write-Host ($name[$b]," seu Indice de Massa Corporea é",[math]::round([double]$IMC[$b],2)," e voce esta com Obesidade Morbida");
}
write-host ""} 

pausa
