$PBExportHeader$emailsmtp.sra
$PBExportComments$Generated Application Object
forward
global type emailsmtp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
n_smtp gn_smtp

end variables

global type emailsmtp from application
string appname = "emailsmtp"
string appruntimeversion = "19.2.0.2703"
end type
global emailsmtp emailsmtp

on emailsmtp.create
appname="emailsmtp"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on emailsmtp.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Environment le_env

GetEnvironment(le_env)
If le_env.ProcessBitness = 64 Then
	gn_smtp = Create n_smtp64
Else
	gn_smtp = Create n_smtp
End If

Open(w_main)

end event

