function Kup-Bilet 
{
    [CmdletBinding()]
    Param(
        [Parameter(
            Mandatory=$true,
            Position=1,
            HelpMessage="Na jaki sektor chciałbyś zakupić bilet?"
        )]
        [ValidateSet('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'VIP')]
        [string]$sektor='B',
        
        [Parameter(
            Mandatory=$true,
            Position=2,
            HelpMessage="Na które miejsce chciałbyś zakupić bilet? Podaj numer miejsca (od 1 do 500):"
        )]
        [int]$miejsce
    )

    DynamicParam 
    {
         if ($sektor -eq 'A') 
         {
              $kartaKibicaAttribute = New-Object System.Management.Automation.ParameterAttribute
              $kartaKibicaAttribute.Position = 3
              $kartaKibicaAttribute.Mandatory = $true
              $kartaKibicaAttribute.HelpMessage = "Jest to sektor dla najbardziej zagorzałych fanów, czy posiadasz kartę kibica?"

              $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

              $attributeCollection.Add($kartaKibicaAttribute)

              $kartaKibicaParam = New-Object System.Management.Automation.RuntimeDefinedParameter('kartaKibica', [string], $attributeCollection)
              $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList "tak", "Tak", "TAK", "nie", "Nie", "NIE"

              $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
              $paramDictionary.Add('kartaKibica', $kartaKibicaParam)
              return $paramDictionary
        }
        elseif ($sektor -eq 'VIP') 
         {
            $VIPAttribute = New-Object System.Management.Automation.ParameterAttribute
            $VIPAttribute.Position = 3
            $VIPAttribute.Mandatory = $true
            $VIPAttribute.HelpMessage = "Jest to sektor dla VIPów, wchodzą na niego bardzo znani ludzie, bilety nie są tanie. Ile jesteś w stanie wydać na bilet?"

            $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

            $attributeCollection.Add($VIPAttribute)

            $wydatkiParam = New-Object System.Management.Automation.RuntimeDefinedParameter('wydatki', [Int16], $attributeCollection)

            $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
            $paramDictionary.Add('wydatki', $wydatkiParam)
            return $paramDictionary
        }
    }

    Begin 
    {
       if ($PSBoundParameters.miejsce -and ($PSBoundParameters.miejsce -lt 1 -or $PSBoundParameters.miejsce -gt 500)) 
       {
           Write-Error "Wpisz inny numer miejsca, na tym stadionie sektory mają po 500 miejsc." -ErrorAction Stop
       }
       if ($PSBoundParameters.wydatki -and ($PSBoundParameters.wydatki -lt 4000 )) 
       {
           Write-Error "Niestety ten sektor nie jest dla Ciebie, powinieneś kupić miejsce na zwykłym sektorze." -ErrorAction Stop
       }
       if ($PSBoundParameters.kartaKibica -and ($PSBoundParameters.kartaKibica -eq "nie" -or $PSBoundParameters.kartaKibica -eq "Nie"-or $PSBoundParameters.kartaKibica -eq "NIE")) 
       {
           Write-Error "Niestety nie możesz zakupić biletu na ten sektor, spróbuj zakupić bilet na inny sektor." -ErrorAction Stop
       }
       elseif ($PSBoundParameters.miejsce -and ($PSBoundParameters.miejsce -eq 7 -or $PSBoundParameters.miejsce -eq 200 -or $PSBoundParameters.miejsce -eq 451 -or $PSBoundParameters.miejsce -eq 369 -or $PSBoundParameters.miejsce -eq 450)) 
       {
           Write-Error "Wpisz inny numer miejsca, to miejsce jest już zajęte." -ErrorAction Stop
       }
   }

   Process 
   {
        $a
        if ($sektor -eq 'A') 
        {
            $a='A'
        }
        elseif ($sektor -eq 'B') 
        {
            $a='B'
        }
        elseif ($sektor -eq 'C') 
        {
            $a='C'
        }
        elseif ($sektor -eq 'D') 
        {
            $a='D'
        }
        elseif ($sektor -eq 'E') 
        {
            $a='E'
        }
        elseif ($sektor -eq 'F') 
        {
            $a='F'
        }
        elseif ($sektor -eq 'G') 
        {
            $a='G'
        }
        elseif ($sektor -eq 'H') 
        {
            $a='H'
        }
        elseif ($sektor -eq 'VIP') 
        {
            $a='VIP'
        }
        "Udało Ci się powołać zakupić bilet na sektor "+$a+"."
        $b=(get-date).month 
        if($b -eq 5 -or $b -eq 6)
        {
            "Bardzo przyda nam się twoje wsparcie w kluczowym momencie sezonu."
        }
   }
}