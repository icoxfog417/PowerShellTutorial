#Commenct is begin from "#"

#Load Assenmly
$config_path = "C:\app.config"
[System.AppDomain]::CurrentDomain.SetData("APP_CONFIG_FILE", $config_path)

#Load .NET Framework Assenmbly
Add-Type -AssemblyName System.Configuration

#Load External dll
Add-Type -Path "C:\lib\hoge.dll"

#Console out
write-host("begin powershell tutorial")

#Declare variable 
$v = 1
[int] $v_typed = 2 #declare with type. -> see at http://technet.microsoft.com/ja-jp/windows/ps_tips05.aspx

#variable's scope
$global:g1 = 1 #global scope
$private:p1 = 1 
$script:g1 = 1 #only in this script

#array
$array = @(1,2,3) #declare array
[int[]]$array_typed = @(1,2,3) #declare array

for($i=0;$i -lt $array.Length;$i++){
    write-host($array[$i]);
}

#key-value array
$hash = @{a=10;b=11;c=12}
$hash.Add("d",13)
$hash.Remove("a")

foreach($key in $hash.Keys){
    write-host($key + " = " + $hash[$key])
}
if(-not $hash.Contains("a")){
    write-host("element a is removed");
}else{
    write-host("element a is still remain");
}

#function
write-host( plus 1 3 )
write-host( minus 5 1)
function plus($x, $y){
    return $x + $y;
}
function minus(){
    param([int]$x, [int]$y)
    return $x - $y;
}


