<#
Created By: Alan Newingham
Search for and unlock all AD accounts that are locked. After first outputting their data in the console for review.
#>
Import-Module ActiveDirectory
$locked = Search-ADAccount –LockedOut
foreach ($l in $locked)
    {
        Write-Host $locked.Name is locked.
    }
Search-ADAccount -LockedOut | Unlock-ADAccount