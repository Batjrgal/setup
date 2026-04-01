[Setup]
AppName=Mongolian spell checker
AppPublisher=Batka
AppVersion=1.0
DefaultDirName={commonpf}\SpellCheckerMN
DefaultGroupName=SpellCheckerMN
OutputDir=.\Output
OutputBaseFilename=SpellChecker MN
Compression=lzma
SolidCompression=yes
SetupIconFile=C:\New folder\favicon.ico
PrivilegesRequired=admin
DisableDirPage=yes
[Files]
; Таны manifest.xml файл байрлаж буй замыг энд зааж өгнө
Source: "C:\New folder\manifest.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\New folder\favicon.ico"; DestDir: "{app}"
Source: "C:\New folder\manifest.xml"; DestDir: "{app}"; Flags: ignoreversion
[Icons]
Name: "{group}\Spell Checker MN"; Filename: "{app}\unins000.exe"; IconFilename: "{app}\favicon.ico"
Name: "{userdesktop}\Spell Checker MN"; Filename: "{app}\unins000.exe"; IconFilename: "{app}\favicon.ico"

[Dirs] 
Name: "C:\Program Files (x86)\SpellCheckerMN" 

[Code] 
function GetComputerName(): String; begin Result := ExpandConstant('{computername}'); end; 

[Run] 
Filename: "cmd.exe"; Parameters: "/C net share SpellCheckerMN /delete /y & net share SpellCheckerMN=""{app}"" /grant:Everyone,FULL"; Flags: runhidden

[Registry] 
Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{A5E838E4-75AC-47E2-9117-A6FBFA91B896}"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{A5E838E4-75AC-47E2-9117-A6FBFA91B896}"; ValueType: string; ValueName: "Url"; ValueData: "\\{computername}\SpellCheckerMN" 
Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{A5E838E4-75AC-47E2-9117-A6FBFA91B896}"; ValueType: string; ValueName: "Id"; ValueData: "{{A5E838E4-75AC-47E2-9117-A6FBFA91B896}" 
Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{A5E838E4-75AC-47E2-9117-A6FBFA91B896}"; ValueType: dword; ValueName: "Flags"; ValueData: 1

;[Registry]
; Word-д уг хавтсыг 'Trusted Catalog' болгож бүртгэх хэсэг
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{836F9FCB-E8CA-4C3D-9651-3D1EE5693C40}"; Flags: uninsdeletekey
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{836F9FCB-E8CA-4C3D-9651-3D1EE5693C40}"; ValueType: string; ValueName: "Id"; ValueData: "{{836F9FCB-E8CA-4C3D-9651-3D1EE5693C40}"
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{836F9FCB-E8CA-4C3D-9651-3D1EE5693C40}"; ValueType: string; ValueName: "Url"; ValueData: "{app}"
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{836F9FCB-E8CA-4C3D-9651-3D1EE5693C40}"; ValueType: dword; ValueName: "Flags"; ValueData: "1"

; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\Developer"; ValueType: string; ValueName: "c29de8f1-9931-4f90-9b5c-78d1eb80a9c4"; ValueData: "{app}\manifest.xml"; Flags: uninsdeletekey

; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\Developer"; ValueType: string; ValueName: "c29de8f1-9931-4f90-9b5c-78d1eb80a9c4"; ValueData: "{app}\manifest.xml"; Flags: uninsdeletevalue
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{c29de8f1-9931-4f90-9b5c-78d1eb80a9c4}"; ValueType: string; ValueName: "Id"; ValueData: "{{c29de8f1-9931-4f90-9b5c-78d1eb80a9c4}"; Flags: uninsdeletekey
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{c29de8f1-9931-4f90-9b5c-78d1eb80a9c4}"; ValueType: string; ValueName: "Url"; ValueData: "{app}"; Flags: uninsdeletekey
; Root: HKCU; Subkey: "Software\Microsoft\Office\16.0\WEF\TrustedCatalogs\{{c29de8f1-9931-4f90-9b5c-78d1eb80a9c4}"; ValueType: dword; ValueName: "Flags"; ValueData: "1"; Flags: uninsdeletekey