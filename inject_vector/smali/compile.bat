set dex_path=%~dp0build_dex\
set classes_path=%~dp0build_classes\
set src_path=%~dp0src\java\com\xlab\lodgehog\
del /s /q %dex_path%* %classes_path%*
javac -cp %1 -d %classes_path% %src_path%*.java && ^
dx --dex --output=%dex_path%classes.dex %classes_path% && ^
java -jar %2 d %dex_path%classes.dex -o %dex_path%out
