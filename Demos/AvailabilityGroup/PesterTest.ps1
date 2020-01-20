param(
    $ConfigValue
)

Describe "Listener available"{
    Context "Availability group"{
        It "Listener should be online"{
            $ConfigValue | Should be $true
        } 
    }
}
