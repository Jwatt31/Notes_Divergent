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
	exit;
};