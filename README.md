# EmailSMTP
This program sends E-Mail using the SMTP protocol. The SMTP object inherits from my Winsock object. It supports HTML formatted messages and attachments. Attachments can be disk files or blob variables.

Images embedded within HTML messages are also supported. Just use src="cid:attach.filename" in the IMG tag where filename is the attachment it refers to.

EmailSMTP uses Cryptlib, an open source library to communicate with the server using SSL or TLS encryption. The file cl32.dll is the 32bit Cryptlib and cl64.dll is the 64bit Cryptlib.

Please note that the Win API function CryptBinaryToString used to base64 encode non-text attachments requires Win XP, Win Server 2003 or later.

Also included is a sample .reg file you can use to force FindMimeFromData to recognize an oddball file extension as plain ANSI text. Just edit the file and change all occurrences of 'ext' to your file extension. If a text file is not recognized as text, it will be sent base64 encoded. This won't hurt anything but it will make the file 33% larger.

## Win API Functions used:
CloseHandle  
CreateFile  
FindMimeFromData  
GetTimeZoneInformation  
OutputDebugString 
QueryPerformanceCounter  
QueryPerformanceFrequency  
ReadFile  
RpcStringFree  
RtlMoveMemory  
Sleep  
UuidCreateSequential  
UuidToString  
Plus those in in the Winsock object  
