del /s /q out FlowLogNG.class classes.dex MaskString.class MaskMap.class
javac -classpath D:\Android\Sdk\platforms\android-26\android.jar .\*.java && ^
D:\Android\Sdk\build-tools\26.0.2\dx.bat --dex --output=classes.dex FlowLogNG.class MaskString.class MaskMap.class && ^
java -jar ../smali/baksmali-2.2.7.jar d classes.dex -o out
