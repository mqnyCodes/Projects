@echo off
title D0wnl0adMenu
:home
cls
echo                                                        D0wnl0adMenu
echo.
echo.
echo.
echo.
echo.
echo.
echo D0wnl0adMenu
echo.
echo [1] OBS
echo.
echo [2] FreeDownloadManager
echo.
echo [3] Roblox
echo.
echo [4] Steam
echo.
echo [5] Opera
echo.
echo [6] Opera GX
echo.
echo [7] VLC
echo.
echo [8] Visual Studio Code
echo.
echo [9] Download all
set /p Option=
if %Option% == 1 goto OBS
if %Option% == 2 goto FDM
if %Option% == 3 goto Roblox
if %Option% == 4 goto Steam
if %Option% == 5 goto Opera
if %Option% == 6 goto OperaGX
if %Option% == 7 goto VLC
if %Option% == 8 goto VSCode
if %Option% == 9 goto All

:OBS
echo Downloading OBS
curl -s -o "%USERPROFILE%\Downloads\OBS.exe" "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-29.1.3-Full-Installer-x64.exe"
echo OBS has downloaded successfully.
echo OBS is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\OBS.exe" /S
if exist "C:\Program Files\obs-studio\bin\64bit\obs.dll" (
    echo OBS has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\OBS.exe"
    pause > nul
    goto home
)

:FDM
echo Downloading Free Download Manager (FDM)
curl -s -o "%USERPROFILE%\Downloads\FDM.exe" "https://files2.freedownloadmanager.org/6/latest/fdm_x64_setup.exe"
echo FDM has downloaded successfully.
echo FDM is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\FDM.exe" /S
if exist "%USERPROFILE%\AppData\Local\Softdeluxe\Free Download Manager\fdm.exe" (
    echo FDM has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\FDM.exe"
    pause > nul
    goto home
)

:Roblox
echo Downloading Roblox
curl -s -o "%USERPROFILE%\Downloads\Roblox.exe" "https://setup.rbxcdn.com/version-2cb276529b1d45b0-RobloxPlayerInstaller.exe"
echo Roblox has downloaded successfully.
echo Roblox is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\Roblox.exe" /S
if exist "%USERPROFILE%\AppData\Local\Roblox\frm.cfg" (
    echo Roblox has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\Roblox.exe"
    pause > nul
    goto home
)

:Steam
echo Downloading Steam
curl -s -o "%USERPROFILE%\Downloads\Steam.exe" "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
echo Steam has downloaded successfully.
echo Steam is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\Steam.exe" /S
if exist "C:\Program Files (x86)\Steam\steam.exe" (
    echo Steam has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\Steam.exe"
    pause > nul
    goto home
)

:Opera
echo Downloading Opera
curl -s -o "%USERPROFILE%\Downloads\Opera.exe" "https://net.geo.opera.com/opera/stable/windows?utm_tryagain=yes&utm_source=google&utm_medium=ose&utm_campaign=(none)&http_referrer=https%3A%2F%2Fwww.google.com%2F&utm_site=opera_com&&utm_lastpage=opera.com/download"
echo Opera has downloaded successfully.
echo Opera is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\Opera.exe" /S
if exist "%USERPROFILE%\AppData\Local\Programs\Opera\launcher.exe" (
    echo Opera has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\Opera.exe"
    pause > nul
    goto home
)


:OperaGX
echo Downloading Opera GX
curl -s -o "%USERPROFILE%\Downloads\OperaGX.exe" "https://net.geo.opera.com/opera_gx/stable/windows?utm_tryagain=yes&utm_source=google&utm_medium=pa&utm_campaign=OGX_DACH_Search_DACH_T1_Brand_V2&utm_content=635252605113&utm_id=EAIaIQobChMI3aTy0vTIgQMVZEGRBR0q-QoTEAAYASAAEgJ-2vD_BwE&http_referrer=https%3A%2F%2Fwww.google.com%2F&utm_site=opera_com&&utm_lastpage=opera.com/"
echo Opera GX has downloaded successfully.
echo Opera GX is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\OperaGX.exe" /S
if exist "%USERPROFILE%\AppData\Local\Programs\Opera GX\launcher.exe" (
    echo Opera GX has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\OperaGX.exe"
    pause > nul
    goto home
)

:VLC
echo Downloading VLC
curl -s -o "%USERPROFILE%\Downloads\VLC.exe" "https://ftp.halifax.rwth-aachen.de/videolan/vlc/3.0.18/win64/vlc-3.0.18-win64.exe"
echo VLC has downloaded successfully.
echo VLC is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\VLC.exe" /S
if exist "C:\Program Files\VideoLAN\VLC\vlc.exe" (
    echo VLC has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\VLC.exe"
    pause > nul
    goto home
)

:VSCode
echo Downloading VSCode
curl -s -o "%USERPROFILE%\Downloads\VSCode.exe" "https://az764295.vo.msecnd.net/stable/abd2f3db4bdb28f9e95536dfa84d8479f1eb312d/VSCodeUserSetup-x64-1.82.2.exe"
echo VSCode has downloaded successfully.
echo VSCode is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\VSCode.exe" /S
if exist "%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\Code.exe" (
    echo VSCode has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\VSCode.exe"
    pause > nul
    goto home
)


:All
curl -s -o "%USERPROFILE%\Downloads\OBS.exe" "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-29.1.3-Full-Installer-x64.exe"
echo Downloaded OBS
curl -s -o "%USERPROFILE%\Downloads\FDM.exe" "https://files2.freedownloadmanager.org/6/latest/fdm_x64_setup.exe"
echo Downloaded FDM
curl -s -o "%USERPROFILE%\Downloads\Roblox.exe" "https://setup.rbxcdn.com/version-2cb276529b1d45b0-RobloxPlayerInstaller.exe"
echo Downloaded Roblox
curl -s -o "%USERPROFILE%\Downloads\Steam.exe" "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
echo Downloaded Steam
curl -s -o "%USERPROFILE%\Downloads\Opera.exe" "https://net.geo.opera.com/opera/stable/windows?utm_tryagain=yes&utm_source=google&utm_medium=ose&utm_campaign=(none)&http_referrer=https%3A%2F%2Fwww.google.com%2F&utm_site=opera_com&&utm_lastpage=opera.com/download"
echo Downloaded Opera (Opera One)
curl -s -o "%USERPROFILE%\Downloads\OperaGX.exe" "https://net.geo.opera.com/opera_gx/stable/windows?utm_tryagain=yes&utm_source=google&utm_medium=pa&utm_campaign=OGX_DACH_Search_DACH_T1_Brand_V2&utm_content=635252605113&utm_id=EAIaIQobChMI3aTy0vTIgQMVZEGRBR0q-QoTEAAYASAAEgJ-2vD_BwE&http_referrer=https%3A%2F%2Fwww.google.com%2F&utm_site=opera_com&&utm_lastpage=opera.com/"
echo Downloaded OperaGX
curl -s -o "%USERPROFILE%\Downloads\VLC.exe" "https://ftp.halifax.rwth-aachen.de/videolan/vlc/3.0.18/win64/vlc-3.0.18-win64.exe"
echo Downloaded VLC
curl -s -o "%USERPROFILE%\Downloads\VSCode.exe" "https://az764295.vo.msecnd.net/stable/abd2f3db4bdb28f9e95536dfa84d8479f1eb312d/VSCodeUserSetup-x64-1.82.2.exe"
echo Downloaded VSCode
echo Let's get to the... Installing part.... oh no.
echo OBS is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\OBS.exe" /S
if exist "C:\Program Files\obs-studio\bin\64bit\obs.dll" (
    echo OBS has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\OBS.exe"
    
)
echo FDM is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\FDM.exe" /S
if exist "%USERPROFILE%\AppData\Local\Softdeluxe\Free Download Manager\fdm.exe" (
    echo FDM has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\FDM.exe"
)

echo Roblox is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\Roblox.exe" /S
if exist "%USERPROFILE%\AppData\Local\Roblox\frm.cfg" (
    echo Roblox has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\Roblox.exe"

)

echo Steam is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\Steam.exe" /S
if exist "C:\Program Files (x86)\Steam\steam.exe" (
    echo Steam has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\Steam.exe"
)

echo Opera is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\Opera.exe" /S
if exist "%USERPROFILE%\AppData\Local\Programs\Opera\launcher.exe" (
    echo Opera has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\Opera.exe"

)
echo Opera GX is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\OperaGX.exe" /S
if exist "%USERPROFILE%\AppData\Local\Programs\Opera GX\launcher.exe" (
    echo Opera GX has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\OperaGX.exe"

)
echo VLC is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\VLC.exe" /S
if exist "C:\Program Files\VideoLAN\VLC\vlc.exe" (
    echo VLC has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\VLC.exe"

)
echo VSCode is silently installing (No GUI)...
start /wait "" "%USERPROFILE%\Downloads\VSCode.exe" /S
if exist "%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\Code.exe" (
    echo VSCode has installed successfully. Enjoy!
    del "%USERPROFILE%\Downloads\VSCode.exe"
    goto info
)

:info
echo Hey. I'm the creator of this DownloadMenu.
echo I'm the creator of this DownloadMenu and this is my first Batch project, I'd like if you sent Feedback on my tiktok, @mqnycodes
echo And I want to continue this DownloadMenu, but I think nine programs is enough for the first version.
echo This was made within two days. But I still worked hard and I really want to make more apps on this DownloadMenu.
echo The discord is coming soon.
echo Maybe i'm even going to do more projects
echo I also made a GitHub a while ago, it's @mqnyCodes 
echo Yeah so like, I wanna get the three-hundred lines, so I just gotta post Lorem Ipsum in here xD
echo But, scroll down to the end.
echo Lorem ipsum dolor sit amet, consectetur adipiscing elit.
echo Nunc at maximus dui. Phasellus pulvinar in lectus pharetra finibus.
echo Morbi vitae enim ultrices, auctor tellus ultrices, molestie tortor. 
echo Etiam nec nulla vitae ex mattis fermentum. 
echo Quisque ullamcorper luctus pulvinar. Morbi ipsum magna, feugiat quis ornare in, vestibulum ut metus. 
echo Maecenas sollicitudin, arcu id ultricies vulputate, neque dui egestas felis, sed lobortis sapien risus ut leo. 
echo Pellentesque id blandit nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
echo Curabitur vel mattis est. Etiam vel justo sit amet magna commodo porta. Aliquam erat volutpat. 
echo Morbi sit amet justo iaculis enim scelerisque molestie eget et ante. Etiam purus purus, varius sed lacinia at, tincidunt vitae ante. 
echo Mauris scelerisque justo lobortis leo dictum fermentum. Sed ut augue tempus, aliquam risus ac, laoreet diam
echo Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu ultrices nisl. Suspendisse euismod fringilla nisi, aliquet aliquam massa cursus sit amet. Sed nec sagittis nisi. Cras consectetur risus placerat, mollis dolor at, ultrices enim. Sed fringilla orci volutpat lorem mattis eleifend. Nulla cursus euismod placerat. Integer enim quam, dapibus ut lacus at, cursus pellentesque sem. Morbi ut lacus et mauris iaculis elementum. Aliquam erat volutpat. Aliquam erat volutpat. Sed tellus augue, efficitur ac accumsan et, dictum vel leo. Donec sagittis magna quis nulla mollis vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

echo In ac imperdiet est. Cras elit velit, eleifend eget odio quis, elementum scelerisque ex. Donec placerat sagittis mauris id pretium. Cras euismod orci non pharetra imperdiet. Nullam malesuada, elit sit amet pellentesque suscipit, libero felis mattis felis, a dictum magna mauris ac nisl. Nullam et diam eget augue pulvinar luctus. Praesent faucibus elementum mauris sed pharetra.

echo Cras ultrices neque et ante dignissim vestibulum. In dictum ultricies eros, et semper arcu ornare vel. Nulla nibh dui, ullamcorper et cursus non, convallis sit amet ipsum. Maecenas et porttitor dolor, id malesuada sapien. Cras eget tortor erat. Sed pellentesque leo vitae tempus faucibus. Suspendisse lacinia augue urna, id tincidunt nibh tempus vitae. Fusce ullamcorper odio in auctor ornare. Duis dapibus dui in ipsum aliquam molestie. Proin massa arcu, auctor eu magna eget, laoreet scelerisque ipsum. Maecenas diam tortor, semper a justo eu, dapibus egestas ante.

echo Nam hendrerit tincidunt est, ut interdum mauris eleifend nec. Duis tincidunt mattis tellus, ultricies convallis erat aliquet in. Sed consectetur lorem eget hendrerit vestibulum. Maecenas et arcu ornare, volutpat tortor ac, elementum risus. Etiam condimentum erat in tortor aliquet, sed mollis tortor ultrices. In hac habitasse platea dictumst. Praesent id vestibulum lacus. Quisque non urna tincidunt, tristique est eget, sagittis tortor. Vestibulum sit amet nunc gravida, commodo neque sed, consequat dolor.

echo Ut quam ipsum, iaculis ut justo dapibus, consequat tempus felis. Donec ut magna a dolor porta euismod. Cras sagittis finibus egestas. Vivamus commodo tincidunt quam quis ultrices. Nulla in diam mollis, semper lacus suscipit, ultricies neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras aliquet tincidunt ex. Donec dui felis, molestie vel velit ut, congue sodales urna. Nunc enim odio, luctus sed nisl quis, eleifend gravida libero.

echo Duis sed urna malesuada, imperdiet massa id, ultrices felis. Sed dapibus tristique ullamcorper. Morbi pretium erat eget maximus laoreet. Etiam eget tincidunt lectus. Cras rutrum tempus luctus. Praesent efficitur justo nulla, sit amet luctus erat elementum euismod. Quisque semper augue eu lorem euismod tristique. Morbi egestas pretium augue, eu finibus nisi sollicitudin vitae. Curabitur et urna porta, dignissim nisi ac, tempus velit.

echo Donec mi purus, blandit vel neque in, vestibulum faucibus nulla. Duis quis lectus elit. Praesent eu sem at augue rhoncus porta. Aenean vel nibh bibendum augue tristique imperdiet. Sed eleifend est et sollicitudin rhoncus. Nulla risus ligula, lobortis dapibus eros sit amet, interdum dapibus turpis. Nunc commodo finibus ipsum ut venenatis. Aenean leo est, efficitur id pulvinar quis, dignissim tincidunt arcu. Suspendisse ac facilisis est, ut cursus felis. Mauris eget congue lorem. Maecenas at dapibus lorem, sit amet viverra sapien. In ornare ultricies placerat. Sed eleifend mi ac sapien lobortis imperdiet. Ut ut congue magna.

echo Ut at mollis est. Phasellus dapibus orci lectus, et finibus dolor lacinia consequat. Ut rutrum nulla congue odio placerat blandit lobortis ac purus. Aenean consectetur mauris ut lacus finibus pharetra. Sed ultrices ipsum id urna sagittis, sed hendrerit turpis fringilla. Etiam auctor, lorem at sollicitudin maximus, dolor orci sagittis libero, sit amet vulputate est purus ac quam. Maecenas id lorem libero.

echo Quisque efficitur sapien dui. Proin cursus rhoncus eleifend. Nam ullamcorper tempus nisi at ultrices. Suspendisse potenti. Quisque elementum semper ipsum nec interdum. Nullam eget consectetur lectus. Suspendisse aliquet sodales maximus. Etiam ut tempus tortor, ac pulvinar risus. Aliquam erat volutpat. Donec semper velit vel ex auctor vestibulum. Donec ornare massa risus, sit amet varius enim venenatis in. In lobortis ligula sed metus volutpat, sit amet imperdiet mi ullamcorper. Duis efficitur lacus consequat quam porttitor varius. Sed eu maximus velit, elementum cursus magna. Donec lacinia nunc at metus tincidunt sollicitudin. Integer posuere neque a tortor commodo rutrum.

echo Nulla scelerisque neque vel eros mollis vehicula. Sed hendrerit at orci eu rhoncus. Sed mollis felis at volutpat maximus. Phasellus eget felis sit amet dui gravida pellentesque sit amet quis lorem. Nunc non purus ut diam gravida ultricies sed eu sem. Fusce gravida imperdiet dolor at aliquam. In semper lacus eget arcu maximus, non tempor mi luctus. Vivamus sed risus rhoncus, dignissim ligula sed, finibus enim. Integer elit enim, venenatis maximus justo non, vestibulum scelerisque tellus. Aliquam sollicitudin, justo id interdum molestie, lacus magna rhoncus lacus, dignissim hendrerit quam neque eleifend mi. Praesent lobortis, ipsum eget convallis gravida, arcu sem hendrerit est, in tincidunt nisi massa in ante. Suspendisse nec bibendum lectus, eu porta sapien. Quisque condimentum erat nibh, ut fringilla lorem faucibus sed. Morbi finibus ligula a turpis efficitur ullamcorper eget vel leo. Sed ut sagittis ex. Integer luctus ac tellus non ullamcorper.

echo Phasellus consectetur sed nunc a scelerisque. Pellentesque lacinia dignissim augue, non condimentum elit consequat nec. Fusce mattis orci eget dictum laoreet. Donec ligula quam, condimentum suscipit urna ut, hendrerit mattis dolor. Nullam metus ligula, lobortis id enim ac, dictum vestibulum mi. Aliquam rhoncus, enim eget maximus maximus, ante dolor sagittis est, quis pharetra tellus est vitae libero. Nulla non mattis turpis. Aliquam rhoncus dolor dolor.

echo Pellentesque ut consequat ipsum, ultricies mollis ex. Suspendisse consectetur vehicula lacus, at eleifend sapien euismod gravida. Ut porta efficitur scelerisque. Fusce volutpat eleifend sem, sed mattis sem volutpat sit amet. Suspendisse cursus risus metus, at ullamcorper lorem porta sed. In id bibendum augue. Praesent fringilla varius lacus, id vulputate sapien consequat vel. Integer quis sem accumsan, hendrerit dui sed, fermentum sem. Aliquam sollicitudin ipsum sed erat suscipit blandit. Vivamus finibus nibh ut tincidunt tincidunt. Suspendisse potenti. Etiam eget eros porttitor, vulputate odio sit amet, hendrerit velit.

echo Duis eget nisi a neque finibus ullamcorper a eu sapien. Curabitur sit amet velit a libero rutrum viverra. Donec erat neque, pulvinar eu dui non, imperdiet ultricies arcu. Suspendisse eu felis ultricies, ornare orci id, consequat lacus. Donec in enim lectus. Phasellus malesuada pulvinar feugiat. Donec eleifend nibh ut sollicitudin tristique. Phasellus cursus lobortis risus vel vestibulum. Vivamus euismod volutpat dolor lobortis commodo. Duis euismod tellus a condimentum mollis. Aenean sit amet dapibus enim.

echo Donec quis ex ac ex hendrerit accumsan. Donec ut leo ac diam cursus lobortis. Sed dignissim eros nisi, id congue nisi viverra a. Maecenas vel mollis ipsum, eget elementum nibh. Aliquam erat volutpat. Etiam in augue rutrum, iaculis odio sit amet, vulputate tellus. Aliquam augue tellus, tempor ac diam sed, ullamcorper facilisis quam. Vestibulum ullamcorper quis turpis sed porttitor. Proin sit amet venenatis odio, ac tempus neque. Proin lobortis nunc a mauris ultricies, ac luctus enim euismod.

echo Etiam congue turpis ac faucibus placerat. Nunc quis dictum diam. Nam sagittis eu massa sit amet porttitor. Duis tincidunt felis lobortis nunc porttitor, a gravida velit dictum. Aenean gravida ligula in ligula condimentum fringilla. Donec fringilla magna et justo viverra, quis dignissim sapien mollis. Ut laoreet pharetra quam, rhoncus tincidunt lectus suscipit sed. Nam interdum, nibh et mollis cursus, urna libero vulputate mauris, ac iaculis erat odio vitae dolor. Morbi eget lobortis mi, eget elementum libero. Morbi posuere, tellus at lobortis molestie, felis nisl gravida ipsum, eget molestie urna neque sit amet risus. Ut sagittis tincidunt varius. Sed a ipsum vitae mauris porttitor accumsan nec non tellus. Nulla ac ultricies massa, eu rhoncus lacus. Curabitur scelerisque eros in arcu rhoncus, vitae blandit libero pulvinar.

echo Aenean nec nisl finibus, ultricies ligula quis, congue lacus. Donec at enim nibh. Duis tristique, quam sed lobortis facilisis, nunc elit mattis augue, sed sagittis est felis vel nibh. Aliquam quis velit lorem. Curabitur tincidunt nisl sit amet iaculis tincidunt. Etiam posuere hendrerit felis. Donec vulputate faucibus ex bibendum vestibulum. Nullam nec quam quis orci convallis sodales. Aliquam non tempor nisl, et ultricies erat. Mauris venenatis, justo nec scelerisque hendrerit, lectus nisi eleifend mi, eu rhoncus lacus enim non felis. Etiam sed congue ipsum. Sed eu tempus metus. Cras id mi id turpis iaculis porta. Proin gravida sed neque ut congue.

echo Ut vestibulum nulla risus, eget tincidunt massa tempus eget. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas cursus, tellus vitae imperdiet consectetur, sem risus scelerisque urna, eget egestas orci massa vitae est. Vivamus ultrices et turpis sit amet tristique. In velit eros, placerat eu est eu, tempor porttitor ipsum. Ut vel sagittis enim. Morbi pharetra convallis urna vitae tempus. Suspendisse ultricies, enim non placerat rhoncus, justo massa dapibus nisl, id tempus lacus nibh in nibh. Maecenas sit amet ligula id erat mattis commodo id id orci. Sed suscipit egestas felis, non scelerisque mi vestibulum non. Vestibulum egestas laoreet augue, in sagittis sem pretium at. Quisque in varius sapien. Maecenas convallis ornare hendrerit. Quisque erat lorem, finibus quis pharetra et, varius id est. Sed mollis nisl eget libero blandit, non maximus mi finibus. Sed scelerisque enim ex, sed convallis metus ultrices nec.

echo Nulla facilisi. Nulla eros tortor, fringilla eu massa eget, varius placerat ex. Praesent turpis ex, varius nec quam in, varius cursus orci. Vestibulum mollis feugiat urna eget pellentesque. Donec vestibulum aliquam facilisis. Etiam elementum, purus vel bibendum tempus, tellus velit volutpat ipsum, nec facilisis nibh lorem sit amet velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc arcu tortor, egestas eu consectetur eget, ultricies nec lorem. Etiam non mauris sit amet est pharetra congue et eget sapien. Nulla tempor non eros nec ullamcorper. Aenean quis faucibus massa. Donec porttitor sapien id pulvinar scelerisque. Aliquam eu egestas magna. Donec sagittis justo imperdiet dui condimentum, non finibus tellus congue.

echo Etiam aliquam neque eget neque bibendum rutrum. Aliquam hendrerit, ante fringilla venenatis rutrum, lectus quam consequat eros, a fermentum diam eros non magna. Vestibulum et turpis turpis. Fusce lectus est, rhoncus vel augue nec, varius congue sapien. Mauris eros lorem, ultricies a euismod maximus, ornare non erat. Sed id feugiat sem. Ut non convallis augue. Suspendisse ante mauris, dignissim iaculis vulputate vel, lacinia at sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam porta faucibus feugiat. Duis vel ex blandit, posuere risus nec, tristique magna.

echo Donec vel lorem lectus. Ut laoreet pellentesque odio, sed dictum nisi vehicula nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam rhoncus finibus vehicula. Aliquam hendrerit justo quis vehicula vulputate. Duis maximus volutpat elit. Duis non tortor non libero condimentum placerat nec tincidunt justo. Donec mollis placerat nisl. Curabitur odio augue, vestibulum ac magna ut, cursus finibus mi. Vestibulum id arcu vulputate, efficitur erat a, pharetra dolor. Nunc eu sapien at urna convallis ultricies non id nisi. Donec pulvinar purus ultrices, varius lectus sed, fermentum tortor. Duis malesuada odio non consequat tincidunt. Fusce vehicula augue ut est imperdiet suscipit. Donec varius nibh in justo interdum convallis.

echo Aenean tristique felis nisi, eu ullamcorper magna suscipit eu. Maecenas ac nulla velit. Sed scelerisque, mi nec mattis tincidunt, mi elit malesuada sapien, vitae cursus justo orci id dolor. Suspendisse suscipit a lectus in auctor. Aliquam eu sem a nulla vestibulum hendrerit quis et augue. Vestibulum ut pharetra magna. Fusce id urna et lacus facilisis dictum non quis neque. Morbi eget porttitor ex. In hac habitasse platea dictumst. Integer vitae turpis vel nunc tincidunt tincidunt tincidunt quis neque. Aenean mi lacus, imperdiet non sapien dignissim, sodales luctus lacus. In laoreet viverra tempus. Curabitur convallis egestas mauris at maximus. Sed mollis mauris id consectetur eleifend. Ut vitae quam at elit porttitor convallis.

echo Pellentesque quam neque, elementum ac turpis elementum, pharetra auctor elit. Nulla facilisi. Donec et placerat sapien. Praesent convallis imperdiet est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce sagittis lacinia nisl, in rhoncus lectus. Suspendisse convallis fringilla condimentum. Vestibulum id est quis ipsum iaculis tempor sed accumsan nibh. Suspendisse potenti. Curabitur sollicitudin, dolor a maximus iaculis, nisl ex ornare urna, non efficitur odio enim nec tortor. Suspendisse aliquam lacus a nulla dapibus vestibulum. Curabitur erat justo, faucibus vitae congue eu, pretium sed est.

echo Ut nisi nisi, ultrices non commodo ut, dapibus sit amet nisl. Aliquam aliquam id risus sed rutrum. Maecenas in finibus mauris. Ut urna augue, rhoncus eget euismod ut, viverra et diam. Duis dictum, odio eget vulputate mollis, libero felis fringilla ante, ac ultricies purus justo et velit. Ut ac leo magna. In leo purus, euismod eu lacus id, tristique auctor arcu. Ut ac nulla laoreet tortor euismod sagittis. Integer non nisi dolor. Ut vitae commodo tortor. Nunc a pulvinar leo, eu elementum ante. Vestibulum ac sapien quis ligula tempus lacinia at quis ante. Sed ut sodales lectus.

echo Phasellus in libero nec turpis semper egestas. Proin lacinia, nunc vel venenatis rutrum, ipsum urna pellentesque ipsum, ac venenatis nibh dui sed magna. Sed et ullamcorper neque. Morbi congue massa est. Suspendisse venenatis eget est mollis ultrices. Fusce eu tincidunt turpis. Aliquam eget lectus ac tortor blandit blandit eleifend et turpis. Nam sit amet congue justo, ac suscipit orci.

echo Mauris et aliquet orci. Etiam rhoncus dolor ante, et tincidunt nulla vehicula eget. Fusce erat tortor, venenatis et sollicitudin quis, ultricies ac tortor. Vestibulum vel tristique urna. Praesent accumsan lacus enim. Integer condimentum lacus id tortor posuere accumsan. Aliquam a lacinia sem, in iaculis ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean dui lectus, dapibus et fermentum non, auctor eget odio. In iaculis neque justo, nec viverra est vulputate id. Morbi scelerisque augue ac dui vulputate pellentesque. Vivamus ac orci turpis. Sed tempor scelerisque elit et dapibus. Ut leo ipsum, bibendum eu risus eu, eleifend cursus nibh.

echo Duis iaculis et metus ut sagittis. Morbi odio massa, blandit ultrices ligula ac, fringilla posuere erat. Mauris finibus elit quis molestie aliquet. Sed semper ligula ante, nec viverra eros consequat quis. Aenean laoreet vestibulum lorem consequat tincidunt. Mauris sit amet turpis quis mauris tempor tristique nec vel nulla. Sed sed suscipit nisi.

echo Sed sed sapien faucibus dui tempor interdum id eu justo. Ut finibus a massa eget pellentesque. Nulla vitae blandit dolor. Mauris ornare venenatis dui, vitae blandit eros elementum in. Nullam pellentesque, eros sit amet ultrices interdum, nisi tortor efficitur mi, ac commodo lorem urna eu lacus. Vestibulum non metus sed libero mollis congue. Donec sit amet leo nunc. Morbi risus augue, fermentum ac condimentum vel, aliquet in libero. Nunc id leo et mi viverra egestas. Integer neque lectus, accumsan imperdiet consequat at, condimentum nec tortor. Nunc luctus sapien venenatis odio hendrerit, et mollis mauris scelerisque. Donec varius non purus et rhoncus. Suspendisse vulputate pellentesque tellus. Nullam quis commodo erat, a imperdiet eros. In convallis iaculis hendrerit.

echo I'm done now. So don't forget to follow my tiktok and check out my GitHub account. So, three-hundred lines, see ya.... later!
pause > nul
exit