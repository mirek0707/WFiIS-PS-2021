Function Powolaj 
{
[CmdletBinding()]
    Param(
        [Parameter(
            Mandatory=$true,
            Position=1,
            HelpMessage="Z jakiego klubu zamierzasz powołać zawodnika?"
        )]
        [ValidateSet("Cracovia","Górnik_Zabrze","Jagiellonia_Białystok", "Lech_Poznań", "Lechia_Gdańsk", "Legia_Warszawa", "Piast_Gliwice", "Podbeskidzie_Bielsko-Biała", "Pogoń_Szczecin", "Raków_Częstochowa", "Stal_Mielec", "Śląsk_Wrocław", "Warta_Poznań", "Wisła_Kraków", "Wisła_Płock", "Zagłębie_Lubin")]
        [string]$klub="Cracovia",

        [Parameter(
            Mandatory=$true,
            Position=2,
            HelpMessage="Na jaką pozycję?"
        )]
        [ValidateSet("Bramkarz","Obrońca","Pomocnik", "Napastnik")]
        [string]$pozycja="Bramkarz"
    )
    DynamicParam
    {
        if ($klub -eq "Cracovia") 
        {
            if($pozycja -eq "Bramkarz")
            {
                
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Lukáš Hroššo','Norbert Łuczak','Karol Niemczycki','Adam Wilk'
                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Krystian Bracik','Diego Ferraresso','Ołeksij Dytiatjew','Michael Gardawski', 'Jakub Góralczyk','Luís Rocha','Iván Márquez','Kamil Pestka','Mateusz Pieńczak','Cornel Râpă','Matej Rodin','Michal Sipľak','Dawid Szymonowicz','Oskar Wójcik','Jan Ziewiec'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Marcos Álvarez','Marcin Budziński','Milan Dimun','Ivan Fiolić','Jakub Gut','Sergiu Hanca','Bartłomiej Kafel','Radosław Kanach','Jakub Kosecki','Florian Loshaj','Sylwester Lusiusz','Maciej Mrozik','Jakub Myszor','Robert Ożóg','Daniel Pik','Damir Sadiković','Mateusz Supryn','Thiago','Pelle van Amersfoort','Tomáš Vestenický','Michał Wiśniewski','Patryk Zaucha'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Tomasz Bała','Kacper Grzebieluch','Przemysław Kapek','Filip Piszczek','Rivaldinho','Sebastian Strózik','Vinícius Ferreira','Łukasz Ziemnik'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Górnik_Zabrze") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Martin Chudý','Jakub Grzesiak','Dawid Kudła','Bartosz Neugebauer'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Stéfanos Evangélou','Adrian Gryszkiewicz','Erik Janža','Michał Koj','Giánnis Massoúras','Kacper Michalski','Aleksander Paluszek','Dariusz Pawłowski','Przemysław Wiśniewski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Bartłomiej Eizenchart','Krzysztof Kubica','Alasana Manneh','Bartosz Nowak','Roman Procházka','Michał Rostkowski','Daniel Ściślak','Norbert Wojtuszek'


                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Richmond Boakye','Jesús Jiménez','Piotr Krawczyk','Alex Sobczyk'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Jagiellonia_Białystok") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Xavier Dziekoński','Hubert Gostomski','Jakub Jasionek','Pāvels Šteinbors','Damian Węglarz'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Bogdan Țîru','Błażej Augustyn','Andrej Kadlec','Bartosz Kwiecień','Jan Majsterek','Miłosz Matysik','Myrosław Mazur','Bojan Nastić','Paweł Olszewski','Szymon Pankiewicz','Ivan Runje','Godfrey Stephen','Bartłomiej Wdowik'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Bartosz Bida','Maciej Bortniczuk','Ariel Borysiuk','Fedor Černych','Fernán Ferreiroa','Jesús Imaz','Maciej Makuszewski','Przemysław Mystkowski','Jakub Orpik','Martin Pospíšil','Tomáš Přikryl','Taras Romanczuk','Kris Twardek','Oliwier Wojciechowski','Kamil Wojtkowski','Konrad Wrzesiński'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Hubert Karpiński','Jakub Lutostański','Jakov Puljić','Krzysztof Toporkiewicz','Maciej Twarowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Lech_Poznań") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Krzysztof Bąkowski','Filip Bednarek','Łukasz Radliński','Mickey van der Hart'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Filip Borowski','Alan Czerwiński','Tomasz Dejewski','Wasyl Kraweć','Antonio Milić','Krystian Palacz','Thomas Rogne','Bartosz Salamon','Ľubomír Šatka','Karol Smajdor','Kacper Wachowiak','Patryk Waliś'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jakub Białczyk','Jakub Kamiński','Jakub Karbownik','Jesper Karlström','Damian Kołtański','Antoni Kozubal','Nika Kwekweskiri','Filip Marchwiński','Pedro Tiba','Tymoteusz Puchacz','Dani Ramírez','Michał Skóraś','Jan Sýkora','Łukasz Szramowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Mikael Ishak','Aron Jóhannsson','Nika Kaczarawa','Tymoteusz Klupś','Norbert Pacławski','Hubert Sobol','Filip Szymczak','Filip Wilak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Lechia_Gdańsk") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Zlatan Alomerović','Dušan Kuciak','Antoni Mikułko','Eryk Mirus'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Karol Fila','Bartosz Kopacz','Mario Maloča','Mykoła Musolitin','Michał Nalepa','Rafał Pietrzak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jan Biegański','Joseph Ceesay','Conrado','Maciej Gajos','Jakub Kałuziński','Filip Koperski','Egzon Kryeziu','Jarosław Kubicki','Tomasz Makowski','Egy Maulana Vikri','Kenny Saief','Kristers Tobers','Žarko Udovičić'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Flávio Paixão','Omran Haydary','Łukasz Zwoliński','Mateusz Żukowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Legia_Warszawa") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Artur Boruc','Radosław Cierzniak','Cezary Miszta','Wojciech Muzyk','Kacper Tobiasz'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Iñaki Astiz','Mateusz Hołownia','Artur Jędrzejczyk','Josip Juranović','Patryk Konik','Igor Lewczuk','Filip Mladenović','Ariel Mosór','Artem Szabanow','Marko Vešović','Mateusz Wieteska'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'André Martins','Mateusz Cholewiak','Radosław Cielemęcki','Bartłomiej Ciepiela','Walerian Gwilia','Bartosz Kapustka','Jakub Kisiel','Kacper Kostorz','Luquinhas','Jehor Macenko','Kacper Skibicki','Bartosz Slisz','Joel Valencia','Paweł Wszołek','Jasur Yaxshiboyev'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Ernest Muçi','Tomáš Pekhart','Rafael Lopes','Nazarij Rusyn','Szymon Włodarczyk'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Piast_Gliwice") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'František Plach','Jakub Szmatuła','Karol Szymański'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jakub Czerwiński','Maksym Gendera','Jakub Holúbek','Tomáš Huk','Piotr Malarczyk','Tomasz Mokwa','Bartosz Rymaniak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Javier Ajenjo Hyjek','Gerard Badía','Remigiusz Borkała','Michał Chrapek','Tomasz Jodłowiec','Martin Konczkowski','Patryk Lipski','Sebastian Milewski','Arkadiusz Pyrka','Patryk Sokołowski','Tiago Alves','Kristopher Vida','Mateusz Winciersz','Michał Zachciał'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Karol Stanek','Dominik Steczyk','Jakub Świerczok','Michał Żyro'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Podbeskidzie_Bielsko-Biała") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Michal Peškovič','Martin Polaček','Krystian Wieczorek'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Dmytro Baszłaj','Rafał Janicki','Petar Mamić','Marco Túlio','Filip Modelski','David Niepsuj','Kornel Osyra','Milan Rundić'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jakub Bieroński','Karol Danielak','Dominik Frelek','Konrad Gutowski','Jakub Hora','Gergő Kocsis','Mateusz Marzec','Serhij Miakuszko','Michał Rzuchowski','Łukasz Sierpina','Maksymilian Sitek','Desley Ubbink'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Kamil Biliński','Bartłomiej Kręcichwost','Marko Roginić','Peter Wilson'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Pogoń_Szczecin") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jakub Bursztyn','Dariusz Krzysztofek','Marcel Mendes-Dudziński','Dante Stipica'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Filip Balcewicz','Jakub Bartkowski','Luís Mata','Igor Łasicki','Mariusz Malec','Hubert Matynia','David Stec','Paweł Stolarski','Kóstas Triantafyllópoulos','Benedikt Zech'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Damian Dąbrowski','Kamil Drygas','Mariusz Fornalczyk','Alexander Gorgon','Santeri Hostikka','Sebastian Kowalczyk','Kacper Kozłowski','Michał Kucharczyk','Rafał Kurzawa','Mateusz Łęgowski','Kacper Smoliński','Tomás Podstawski','Marcel Wędrychowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Adrian Benedyczak','Paweł Cibicki','Adam Frączczak','Hubert Turski','Luka Zahovič'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Raków_Częstochowa") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Dominik Holec','Branislav Pindroch'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Zoran Arsenić','Jarosław Jach','Daniel Mikołajewski','Andrzej Niewulis','Tomáš Petrášek','Kamil Piątkowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Daniel Bartl','Marcin Cebula','Wiktor Długosz','Iwo Kaczmarski','Patryk Kun','Ben Lederman','Piotr Malinowski','Piotr Owczarek','Giánnis Papanikoláou','Marko Poletanović','Igor Sapała','Petr Schwarz','Daniel Szelągowski','David Tijanić','Fran Tudor','Mateusz Wdowiak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jakub Arak','Vladislavs Gutkovskis','Michał Litwa','Ivi López'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Stal_Mielec") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Mateusz Dudek','Michał Gliwa','Damian Primel','Rafał Strączek'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Wojciech Błyszko','Bożidar Czorbadżijski','Jonathan de Amo','Krystian Getinger','Albin Granlund','Wojciech Lisowski','Łukasz Seweryn','Martin Sus','Mateusz Żyro'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Robert Dadok','Maciej Domański','Marcin Flis','Petteri Forsell','Maciej Jankowski','Adam Kramarz','Przemysław Maj','Mateusz Mak','Mateusz Matras','Damian Pawłowski','Andreja Prokić','Szymon Stasik','Grzegorz Tomasiewicz','Maciej Urbańczyk','Michael Wyparło'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Bartosz Bajorek','Aleksandyr Kolew','Kacper Sadłocha','Łukasz Zjawiński'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Śląsk_Wrocław") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Paweł Budzyński','Bartłomiej Frasik','Matúš Putnocký','Dariusz Szczerbal','Michał Szromnik','Miłosz Tysiak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Łukasz Bejger','Adrian Bukowski','Piotr Celeban','Guillermo Cotugno','Wojciech Golla','Mateusz Maćkowiak','Lubambo Musonda','Mariusz Pawelec','Konrad Poprawa','Israel Puerto','Dino Štiglec','Márk Tamás','Maciej Wilusz','Olivier Wypart'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Przemysław Bargiel','Bartosz Boruń','Patryk Janasik','Szymon Lewkot','Adrian Łyszczarz','Rafał Makowski','Krzysztof Mączyński','Maciej Pałaszewski','Bartłomiej Pawłowski','Róbert Pich','Mateusz Praszelik','Mathieu Scalet','Waldemar Sobota','Marcel Zylla'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Sebastian Bergier','Erik Expósito','Fabian Piasecki'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Warta_Poznań") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Daniel Bielica','Adrian Lis','Leo Przybylak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Jan Grzesik','Robert Ivanov','Bartosz Kieliba','Jakub Kiełb','Aleks Ławniczak','Maik Nawrocki','Mateusz Spychała'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Makana Baku','Bartłomiej Burman','Mateusz Czyżycki','Nikodem Fiedosewicz','Konrad Handzlik','Michał Jakóbowski','Robert Janicki','Michał Kopczyński','Mateusz Kupczak','Jakub Kuzdra','Mario Rodríguez','Mariusz Rybicki','Mateusz Sopoćko','Łukasz Trałka','Mateusz Wojciechowski','Maciej Żurawski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Gracjan Jaroch','Mateusz Kuzimski','Adam Zreľák'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Wisła_Kraków") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Kamil Broda','Michał Buchalik','Miłosz Jaskuła','Mateusz Lis','Kacper Szewczyk','Piotr Zagórowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Łukasz Burliga','Michal Frydrych','Kamil Głogowski','Konrad Gruszkowski','Daniel Hoyo-Kowalski','Souleymane Koné','Adi Mehremić','Uroš Radaković','Maciej Sadlok','Dawid Szot','Serafin Szota','Krystian Wachowiak'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Vullnet Basha','Jakub Błaszczykowski','Rafał Boguski','Sławomir Chmiel','Chuca','Kacper Duda','Jean Carlos Silva','Nikola Kuveljić','David Mawutor','Patryk Plewka','Stefan Savić','Piotr Starzyński','Wiktor Szywacz','Yaw Yeboah','Gieorgij Żukow'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList 'Felicio Brown Forbes','Aleksander Buksa','Žan Medved'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Wisła_Płock") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Bartłomiej Gradecki','Krzysztof Kamiński','Karol Szymkowiak','Adrian Tokarski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList   'Ángel García','Damian Michalski','Milan Obradović','Julio Rodríguez','Jakub Rzeźniczak','Bartłomiej Sielewski','Piotr Tomasik','Alan Uryga','Kristián Vallo','Damian Zbozień'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Hubert Adamczyk','Fryderyk Gerbowski','Dawid Krzyżański','Dušan Lagator','Filip Lesniak','Giorgi Merebaszwili','Aleksander Pawlak','Piotr Pyrdoł','Damian Rasak','Luka Šušnjara','Wojciech Szumilas','Mateusz Szwoch','Jakub Witek','Rafał Wolski','Bartosz Zynek'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Airam Cabrera','Dawid Kocyła','Mateusz Lewandowski','Kacper Rogoziński','Cillian Sheridan','Patryk Tuszyński'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }
        elseif ($klub -eq "Zagłębie_Lubin") 
        {
            if($pozycja -eq "Bramkarz")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz bramkarza:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Kamil Bielikow','Konrad Forenc','Dominik Hładun','Dominik Kalinowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Obrońca")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz obrońcę:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList   'Saša Balić','Mateusz Bartolewski','Kacper Chodyna','Đorđe Crnomarković','Dominik Jończy','Kamil Kruk','Damian Oko','Milan Posmyk','Lorenco Šimić','Jakub Wójcicki'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Pomocnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz pomocnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Jewgienij Baszkirow','Jakub Bednarczyk','Dejan Dražić','Daniel Dudziński','Mateusz Kizyma','Łukasz Łakomy','Łukasz Poręba','Adam Ratajczyk','Filip Starzyński','Miroslav Stoch','Jakub Sypek','Saša Živec','Jakub Żubrowski'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
            elseif($pozycja -eq "Napastnik")
            {
                $ZawodnikAttribute = New-Object System.Management.Automation.ParameterAttribute
                $ZawodnikAttribute.Position = 3
                $ZawodnikAttribute.Mandatory = $true
                $ZawodnikAttribute.HelpMessage = "Wybierz napastnika:"

                $attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

                $attributeCollection.Add($ZawodnikAttribute)

                $ZawodnikParam = New-Object System.Management.Automation.RuntimeDefinedParameter('Zawodnik', [String], $attributeCollection)
                $paramOptions = New-Object System.Management.Automation.ValidateSetAttribute -ArgumentList  'Samuel Mráz','Karol Podliński','Oliwier Sławiński','Patryk Szysz'

                $attributeCollection.Add($paramOptions)

                $paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
                $paramDictionary.Add('Zawodnik', $ZawodnikParam)
                return $paramDictionary
            }
        }

    }
    Begin 
    {
       if(((get-date).dayofweek -eq 'saturday') -or ((get-date).dayofweek -eq 'sunday'))
       {
        Write-Error "Obecnie rozgrywane są mecze, lepiej zacznij oglądać!" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Cracovia') -and $PSBoundParameters.Zawodnik -and ($PSBoundParameters.Zawodnik -eq ('Lukáš Hroššo') -or 
             $PSBoundParameters.Zawodnik -eq ('Diego Ferraresso') -or 
             $PSBoundParameters.Zawodnik -eq ('Ołeksij Dytiatjew')-or 
             $PSBoundParameters.Zawodnik -eq ('Luís Rocha')-or 
             $PSBoundParameters.Zawodnik -eq ('Iván Márquez')-or 
             $PSBoundParameters.Zawodnik -eq ('Cornel Râpă')-or 
             $PSBoundParameters.Zawodnik -eq ('Matej Rodin')-or 
             $PSBoundParameters.Zawodnik -eq ('Michal Sipľak') -or
             $PSBoundParameters.Zawodnik -eq ('Marcos Álvarez') -or
             $PSBoundParameters.Zawodnik -eq ('Milan Dimun') -or
             $PSBoundParameters.Zawodnik -eq ('Ivan Fiolić') -or
             $PSBoundParameters.Zawodnik -eq ('Sergiu Hanca') -or
             $PSBoundParameters.Zawodnik -eq ('Florian Loshaj') -or
             $PSBoundParameters.Zawodnik -eq ('Damir Sadiković') -or
             $PSBoundParameters.Zawodnik -eq ('Thiago') -or
             $PSBoundParameters.Zawodnik -eq ('Pelle van Amersfoort') -or
             $PSBoundParameters.Zawodnik -eq ('Tomáš Vestenický') -or
             $PSBoundParameters.Zawodnik -eq ('Rivaldinho') -or
             $PSBoundParameters.Zawodnik -eq ('Vinícius Ferreira')))
       {
           Write-Error "Niestety ten zawodnik Cracovii nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Górnik_Zabrze') -and $PSBoundParameters.Zawodnik -and ( $PSBoundParameters.Zawodnik -eq ('Martin Chudý') -or
             $PSBoundParameters.Zawodnik -eq ('Stéfanos Evangélou') -or
             $PSBoundParameters.Zawodnik -eq ('Erik Janža') -or
             $PSBoundParameters.Zawodnik -eq ('Giánnis Massoúras') -or
             $PSBoundParameters.Zawodnik -eq ('Alasana Manneh') -or
             $PSBoundParameters.Zawodnik -eq ('Roman Procházka') -or
             $PSBoundParameters.Zawodnik -eq ('Richmond Boakye') -or
             $PSBoundParameters.Zawodnik -eq ('Jesús Jiménez') -or
             $PSBoundParameters.Zawodnik -eq ('Alex Sobczyk') ))
       {
           Write-Error "Niestety ten zawodnik Górnika nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Jagiellonia_Białystok') -and $PSBoundParameters.Zawodnik -and ( $PSBoundParameters.Zawodnik -eq ('Pāvels Šteinbors') -or
             $PSBoundParameters.Zawodnik -eq ('Bogdan Țîru') -or
             $PSBoundParameters.Zawodnik -eq ('Andrej Kadlec') -or
             $PSBoundParameters.Zawodnik -eq ('Myrosław Mazur') -or
             $PSBoundParameters.Zawodnik -eq ('Bojan Nastić') -or
             $PSBoundParameters.Zawodnik -eq ('Ivan Runje') -or
             $PSBoundParameters.Zawodnik -eq ('Godfrey Stephen') -or
             $PSBoundParameters.Zawodnik -eq ('Fedor Černych') -or
             $PSBoundParameters.Zawodnik -eq ('Fernán Ferreiroa') -or
             $PSBoundParameters.Zawodnik -eq ('Jesús Imaz') -or
             $PSBoundParameters.Zawodnik -eq ('Martin Pospíšil') -or
             $PSBoundParameters.Zawodnik -eq ('Tomáš Přikryl') -or
             $PSBoundParameters.Zawodnik -eq ('Kris Twardek') -or
             $PSBoundParameters.Zawodnik -eq ('Jakov Puljić') ))
       {
           Write-Error "Niestety ten zawodnik Jagiellonii nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Lech_Poznań') -and $PSBoundParameters.Zawodnik -and ( $PSBoundParameters.Zawodnik -eq ('Mickey van der Hart') -or
             $PSBoundParameters.Zawodnik -eq ('Wasyl Kraweć') -or
             $PSBoundParameters.Zawodnik -eq ('Antonio Milić') -or
             $PSBoundParameters.Zawodnik -eq ('Thomas Rogne') -or
             $PSBoundParameters.Zawodnik -eq ('Ľubomír Šatka') -or
             $PSBoundParameters.Zawodnik -eq ('Jesper Karlström') -or
             $PSBoundParameters.Zawodnik -eq ('Nika Kwekweskiri') -or
             $PSBoundParameters.Zawodnik -eq ('Pedro Tiba') -or
             $PSBoundParameters.Zawodnik -eq ('Dani Ramírez') -or
             $PSBoundParameters.Zawodnik -eq ('Jan Sýkora') -or
             $PSBoundParameters.Zawodnik -eq ('Mikael Ishak') -or
             $PSBoundParameters.Zawodnik -eq ('Aron Jóhannsson') -or
             $PSBoundParameters.Zawodnik -eq ('Nika Kaczarawa') ))
       {
           Write-Error "Niestety ten zawodnik Lecha nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Lechia_Gdańsk') -and $PSBoundParameters.Zawodnik -and (  $PSBoundParameters.Zawodnik -eq ('Zlatan Alomerović') -or
             $PSBoundParameters.Zawodnik -eq ('Dušan Kuciak') -or
             $PSBoundParameters.Zawodnik -eq ('Mario Maloča') -or
             $PSBoundParameters.Zawodnik -eq ('Mykoła Musolitin') -or
             $PSBoundParameters.Zawodnik -eq ('Joseph Ceesay') -or
             $PSBoundParameters.Zawodnik -eq ('Conrado') -or
             $PSBoundParameters.Zawodnik -eq ('Flávio Paixão') -or
             $PSBoundParameters.Zawodnik -eq ('Egzon Kryeziu') -or
             $PSBoundParameters.Zawodnik -eq ('Egy Maulana Vikri') -or
             $PSBoundParameters.Zawodnik -eq ('Kenny Saief') -or
             $PSBoundParameters.Zawodnik -eq ('Kristers Tobers') -or
             $PSBoundParameters.Zawodnik -eq ('Žarko Udovičić') -or
             $PSBoundParameters.Zawodnik -eq ('Omran Haydary') ))
       {
           Write-Error "Niestety ten zawodnik Lechii nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Legia_Warszawa') -and $PSBoundParameters.Zawodnik -and (  $PSBoundParameters.Zawodnik -eq ('Iñaki Astiz') -or
             $PSBoundParameters.Zawodnik -eq ('Josip Juranović') -or
             $PSBoundParameters.Zawodnik -eq ('Filip Mladenović') -or
             $PSBoundParameters.Zawodnik -eq ('Artem Szabanow') -or
             $PSBoundParameters.Zawodnik -eq ('Marko Vešović') -or
             $PSBoundParameters.Zawodnik -eq ('André Martins') -or
             $PSBoundParameters.Zawodnik -eq ('Walerian Gwilia') -or
             $PSBoundParameters.Zawodnik -eq ('Luquinhas') -or
             $PSBoundParameters.Zawodnik -eq ('Jehor Macenko') -or
             $PSBoundParameters.Zawodnik -eq ('Joel Valencia') -or
             $PSBoundParameters.Zawodnik -eq ('Jasur Yaxshiboyev') -or
             $PSBoundParameters.Zawodnik -eq ('Ernest Muçi') -or
             $PSBoundParameters.Zawodnik -eq ('Tomáš Pekhart') -or
             $PSBoundParameters.Zawodnik -eq ('Rafael Lopes') -or
             $PSBoundParameters.Zawodnik -eq ('Nazarij Rusyn') ))
       {
           Write-Error "Niestety ten zawodnik Legii nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Piast_Gliwice') -and $PSBoundParameters.Zawodnik -and (   $PSBoundParameters.Zawodnik -eq ('František Plach') -or
             $PSBoundParameters.Zawodnik -eq ('Jakub Holúbek') -or
             $PSBoundParameters.Zawodnik -eq ('Tomáš Huk') -or
             $PSBoundParameters.Zawodnik -eq ('Gerard Badía') -or
             $PSBoundParameters.Zawodnik -eq ('Tiago Alves') -or
             $PSBoundParameters.Zawodnik -eq ('Kristopher Vida') ))
       {
           Write-Error "Niestety ten zawodnik Piasta nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Podbeskidzie_Bielsko-Biała') -and $PSBoundParameters.Zawodnik -and (   $PSBoundParameters.Zawodnik -eq ('Michal Peškovič') -or
             $PSBoundParameters.Zawodnik -eq ('Martin Polaček') -or
             $PSBoundParameters.Zawodnik -eq ('Dmytro Baszłaj') -or
             $PSBoundParameters.Zawodnik -eq ('Petar Mamić') -or
             $PSBoundParameters.Zawodnik -eq ('Marco Túlio') -or
             $PSBoundParameters.Zawodnik -eq ('Milan Rundić') -or
             $PSBoundParameters.Zawodnik -eq ('Jakub Hora') -or
             $PSBoundParameters.Zawodnik -eq ('Gergő Kocsis') -or
             $PSBoundParameters.Zawodnik -eq ('Serhij Miakuszko') -or
             $PSBoundParameters.Zawodnik -eq ('Desley Ubbink') -or
             $PSBoundParameters.Zawodnik -eq ('Marko Roginić') -or
             $PSBoundParameters.Zawodnik -eq ('Peter Wilson') ))
       {
           Write-Error "Niestety ten zawodnik Podbeskidzia nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Pogoń_Szczecin') -and $PSBoundParameters.Zawodnik -and (   $PSBoundParameters.Zawodnik -eq ('Dante Stipica') -or
             $PSBoundParameters.Zawodnik -eq ('Luís Mata') -or
             $PSBoundParameters.Zawodnik -eq ('David Stec') -or
             $PSBoundParameters.Zawodnik -eq ('Kóstas Triantafyllópoulos') -or
             $PSBoundParameters.Zawodnik -eq ('Benedikt Zech') -or
             $PSBoundParameters.Zawodnik -eq ('Alexander Gorgon') -or
             $PSBoundParameters.Zawodnik -eq ('Santeri Hostikka') -or
             $PSBoundParameters.Zawodnik -eq ('Paweł Cibicki') -or
             $PSBoundParameters.Zawodnik -eq ('Luka Zahovič') ))
       {
           Write-Error "Niestety ten zawodnik Pogoni nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Raków_Częstochowa') -and $PSBoundParameters.Zawodnik -and (    $PSBoundParameters.Zawodnik -eq ('Dominik Holec') -or
             $PSBoundParameters.Zawodnik -eq ('Branislav Pindroch') -or
             $PSBoundParameters.Zawodnik -eq ('Zoran Arsenić') -or
             $PSBoundParameters.Zawodnik -eq ('Tomáš Petrášek') -or
             $PSBoundParameters.Zawodnik -eq ('Daniel Bartl') -or
             $PSBoundParameters.Zawodnik -eq ('Giánnis Papanikoláou') -or
             $PSBoundParameters.Zawodnik -eq ('Marko Poletanović') -or
             $PSBoundParameters.Zawodnik -eq ('Petr Schwarz') -or
             $PSBoundParameters.Zawodnik -eq ('David Tijanić') -or
             $PSBoundParameters.Zawodnik -eq ('Fran Tudor') -or
             $PSBoundParameters.Zawodnik -eq ('Vladislavs Gutkovskis') -or
             $PSBoundParameters.Zawodnik -eq ('Ivi López') ))
       {
           Write-Error "Niestety ten zawodnik Rakowa nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Stal_Mielec') -and $PSBoundParameters.Zawodnik -and (     $PSBoundParameters.Zawodnik -eq ('Bożidar Czorbadżijski') -or
             $PSBoundParameters.Zawodnik -eq ('Jonathan de Amo') -or
             $PSBoundParameters.Zawodnik -eq ('Albin Granlund') -or
             $PSBoundParameters.Zawodnik -eq ('Martin Sus') -or
             $PSBoundParameters.Zawodnik -eq ('Petteri Forsell') -or
             $PSBoundParameters.Zawodnik -eq ('Andreja Prokić') -or
             $PSBoundParameters.Zawodnik -eq ('Aleksandyr Kolew') ))
       {
           Write-Error "Niestety ten zawodnik Stali nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Śląsk_Wrocław') -and $PSBoundParameters.Zawodnik -and (      $PSBoundParameters.Zawodnik -eq ('Matúš Putnocký') -or
             $PSBoundParameters.Zawodnik -eq ('Guillermo Cotugno') -or
             $PSBoundParameters.Zawodnik -eq ('Lubambo Musonda') -or
             $PSBoundParameters.Zawodnik -eq ('Israel Puerto') -or
             $PSBoundParameters.Zawodnik -eq ('Dino Štiglec') -or
             $PSBoundParameters.Zawodnik -eq ('Márk Tamás') -or
             $PSBoundParameters.Zawodnik -eq ('Róbert Pich') -or
             $PSBoundParameters.Zawodnik -eq ('Erik Expósito') ))
       {
           Write-Error "Niestety ten zawodnik Śląska nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Warta_Poznań') -and $PSBoundParameters.Zawodnik -and (      $PSBoundParameters.Zawodnik -eq ('Robert Ivanov') -or
             $PSBoundParameters.Zawodnik -eq ('Makana Baku') -or
             $PSBoundParameters.Zawodnik -eq ('Mario Rodríguez') -or
             $PSBoundParameters.Zawodnik -eq ('Adam Zreľák') ))
       {
           Write-Error "Niestety ten zawodnik Warty nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Wisła_Kraków') -and $PSBoundParameters.Zawodnik -and (      $PSBoundParameters.Zawodnik -eq ('Michal Frydrych') -or
             $PSBoundParameters.Zawodnik -eq ('Souleymane Koné') -or
             $PSBoundParameters.Zawodnik -eq ('Adi Mehremić') -or
             $PSBoundParameters.Zawodnik -eq ('Uroš Radaković') -or
             $PSBoundParameters.Zawodnik -eq ('Vullnet Basha') -or
             $PSBoundParameters.Zawodnik -eq ('Chuca') -or
             $PSBoundParameters.Zawodnik -eq ('Jean Carlos Silva') -or
             $PSBoundParameters.Zawodnik -eq ('Nikola Kuveljić') -or
             $PSBoundParameters.Zawodnik -eq ('David Mawutor') -or
             $PSBoundParameters.Zawodnik -eq ('Stefan Savić') -or
             $PSBoundParameters.Zawodnik -eq ('Yaw Yeboah') -or
             $PSBoundParameters.Zawodnik -eq ('Gieorgij Żukow') -or
             $PSBoundParameters.Zawodnik -eq ('Felicio Brown Forbes') -or
             $PSBoundParameters.Zawodnik -eq ('Žan Medved')  ))
       {
           Write-Error "Niestety ten zawodnik Wisły Kraków nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Wisła_Płock') -and $PSBoundParameters.Zawodnik -and (     $PSBoundParameters.Zawodnik -eq ('Ángel García') -or
             $PSBoundParameters.Zawodnik -eq ('Milan Obradović') -or
             $PSBoundParameters.Zawodnik -eq ('Julio Rodríguez') -or
             $PSBoundParameters.Zawodnik -eq ('Kristián Vallo') -or
             $PSBoundParameters.Zawodnik -eq ('Dušan Lagator') -or
             $PSBoundParameters.Zawodnik -eq ('Filip Lesniak') -or
             $PSBoundParameters.Zawodnik -eq ('Giorgi Merebaszwili') -or
             $PSBoundParameters.Zawodnik -eq ('Luka Šušnjara') -or
             $PSBoundParameters.Zawodnik -eq ('Airam Cabrera') -or
             $PSBoundParameters.Zawodnik -eq ('Cillian Sheridan') ))
       {
           Write-Error "Niestety ten zawodnik Wisły Płock nie jest Polakiem" -ErrorAction Stop
       }
       elseif ($PSBoundParameters.Klub -eq ('Zagłębie_Lubin') -and $PSBoundParameters.Zawodnik -and (      $PSBoundParameters.Zawodnik -eq ('Saša Balić') -or
             $PSBoundParameters.Zawodnik -eq ('Đorđe Crnomarković') -or
             $PSBoundParameters.Zawodnik -eq ('Lorenco Šimić') -or
             $PSBoundParameters.Zawodnik -eq ('Jewgienij Baszkirow') -or
             $PSBoundParameters.Zawodnik -eq ('Dejan Dražić') -or
             $PSBoundParameters.Zawodnik -eq ('Miroslav Stoch') -or
             $PSBoundParameters.Zawodnik -eq ('Saša Živec') -or
             $PSBoundParameters.Zawodnik -eq ('Samuel Mráz')  ))
       {
           Write-Error "Niestety ten zawodnik Zagłębia nie jest Polakiem" -ErrorAction Stop
       }
   }
   Process
   {
        $a
        if ($klub -eq "Cracovia") 
        {
            $a='z Cracovii'
        }
        elseif ($klub -eq "Górnik_Zabrze") 
        {
            $a='z Górnika Zabrze'
        }
        elseif ($klub -eq "Jagiellonia_Białystok")
        {
            $a='z Jagiellonii Białystok'
        }
        elseif ($klub -eq "Lech_Poznań")
        {
            $a='z Lecha Poznań'
        }
        elseif ($klub -eq "Lechia_Gdańsk")
        {
            $a='z Lechii Gdańsk'
        }
        elseif ($klub -eq "Legia_Warszawa")
        {
            $a='z Legii Warszawa'
        }
        elseif ($klub -eq "Piast_Gliwice")
        {
            $a='z Piasta Gliwice'
        }
        elseif ($klub -eq "Podbeskidzie_Bielsko-Biała")
        {
            $a='z Podbeskidzia Bielsko-Biała'
        }
        elseif ($klub -eq "Pogoń_Szczecin")
        {
            $a='z Pogoni Szczecin'
        }
        elseif ($klub -eq "Raków_Częstochowa")
        {
            $a='z Rakowa Częstochowa'
        } 
        elseif ($klub -eq "Stal_Mielec")
        {
            $a='ze Stali Mielec'
        }
        elseif ($klub -eq "Śląsk_Wrocław")
        {
            $a='ze Śląska Wrocław'
        }
        elseif ($klub -eq "Warta_Poznań")
        {
            $a='z Warty Poznań'
        } 
        elseif ($klub -eq "Wisła_Kraków")
        {
            $a='z Wisły Kraków'
        } 
        elseif ($klub -eq "Wisła_Płock")
        {
            $a='z Wisły Płock'
        } 
        elseif ($klub -eq "Zagłębie_Lubin")
        {
            $a='z Zagłębia Lubin'
        }
        "Udało Ci się powołać zawodnika "+$a+" grającego jako "+$Pozycja+'.'
        $b=(get-date).month 
        if($b -eq 5)
        {
            "Zawodnik ma szansę wystąpić na najbliższym EURO 2020."
        }                
   }
}