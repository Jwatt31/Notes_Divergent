## Script imports.

## Script results header
Write-Host (' ');
Write-Host ('# [ you ran ]');
Write-Host ('# .\' + $MyInvocation.MyCommand.Name + ' ' + ($args -join ' '));
Write-Host (' ');

# Check if the script received the correct number of arguments.
if(($args.Count -ne 1) -or ($args[0] -eq 'help')){
	# Print the help text
	Write-Host ('# [ usage ]');
	Write-Host ('# .\' + $MyInvocation.MyCommand.Name + ' arg1;');
	Write-Host ('# .\' + $MyInvocation.MyCommand.Name + ' <ArgumentNumberOne>;');
	Write-Host ('#');
	Write-Host ('#  <ArgumentNumberOne> = explaination for argument 1');
	Write-Host (' ');
	Write-Host ('# [ help ]');
	Write-Host ('# .\' + $MyInvocation.MyCommand.Name + ' help;');
	Write-Host ('#   -Prints script usage info. (this text you are reading right now)');
	Write-Host (' ');
	exit;
}else{
	# Do the actual script actions here.
    switch ($args[0]) {
        "printdate" {

            $utcTime = (Get-Date).ToUniversalTime().ToString("yyyy-MM-dd HH:mm:ss zzz: ($localTimeZone)")
            $date24WeeksAgo = (Get-Date).AddDays(-168)
            $localTime = Get-Date
            $localTimeZone = (Get-TimeZone).Id
            

            Write-Host "Local Time: $($localTime.ToString('yyyy-MM-dd HH:mm:ss zzz')) ($localTimeZone)"
            Write-Host "Zulu Time : $utcTime"
            Write-Host "24 Weeks  : $($date24WeeksAgo.ToString('yyyy-MM-dd HH:mm:ss zzz')) ($localTimeZone)"

            Write-Host ("Is today " + (Get-Date).IsDaylightSavingTime());
            Write-Host ("Is 24w ago "+ (Get-Date).AddDays(-168).IsDaylightSavingTime());

        }
        "printhello" { Write-Host "hello world, it's a me" }
        "getdays" {
            if($args.Count -lt 2){
                $getdays =30
            }else{
                $getdays = $args[1];
            }
            for ($i=0; $i -lt $getdays; $i++)
            {
                write
            }
        }
        Default { }
    }
	exit;
};