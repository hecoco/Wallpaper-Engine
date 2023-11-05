@echo off

::（可以修改）设置RePKG.exe的绝对路�?
set "RePKGURI=.\RePKG.exe"

::（可以修改）设置壁纸素材文件输出路径
set "ouputURI=F:\zhuomian"

::（不要修改）利用for语句读取剪贴板第一条信息，把结果赋值给变量
for /f "delims=" %%i in ('powershell -command "Get-Clipboard"') do (
    set "WallpaperURI=%%i"
)

::（不要修改）在指定路径下创建输出壁纸素材的文件夹
mkdir "%ouputURI%"

::（不要修改）运行RePKG提取壁纸文件到指定文件夹
"%RePKGURI%" extract "%WallpaperURI%"\scene.pkg -o "%ouputURI%"

::（可以修改）如果想运行完暂停，可以把下一行最前面的两�?::"删掉
::pause