# dependencies
# 1. 7zip https://www.7-zip.org/a/7z1900-x64.msi
# 1. R-Portable https://nchc.dl.sourceforge.net/project/rportable/R-Portable/3.6.3/R-Portable_3.6.3.paf.exe
# 2. autoit-v3 https://www.autoitscript.com/files/autoit3/autoit-v3.zip


# on windows use below script to auto download and unzip above files
curl.exe --output "%CD%\dep\7zip.msi" --url https://www.7-zip.org/a/7z1900-x64.msi
curl.exe --output "%CD%\dep\rportable.download" --url https://nchc.dl.sourceforge.net/project/rportable/R-Portable/3.6.3/R-Portable_3.6.3.paf.exe
curl.exe --output "%CD%\dep\autoit.download" --url https://www.autoitscript.com/files/autoit3/autoit-v3.zip
"%CD%\dep\7zip.msi" /passive INSTALLDIR="%CD%\dep\7zip"
"%CD%\dep\7zip\7z" x -aoa "%CD%\dep\rportable.download" -o"%CD%\dep\rportable"
"%CD%\dep\7zip\7z" x -aoa "%CD%\dep\autoit.download" -o"%CD%\dep\autoit"