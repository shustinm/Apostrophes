#NoEnv
#SingleInstance force
FileCreateDir, %A_AppData%\Apostrophes
SetWorkingDir, %A_AppData%\Apostrophes
FileRead, fileData, settings.txt
if ErrorLevel   ; i.e. it's not blank or zero, file doesn't exist
    FileAppend,Settings:,settings.txt

FileRead, settings, settings.txt
IfNotInString, settings, showinfo=false
{
	MsgBox,4,How-To: Apostrophes,This program will automatically add apostrophes ( ' ) where they are needed when you type, it will also automatically capitalize the letter "i".`nIf you still want to type "i", you must type "ii" instead.`nPress Control + Shift + R to reload the program`nPress the Pause key on your keyboard to stop it, press again to resume.`nThe Program is already running in the background, try it out!`n`nDo you want to see this message next time you run the program?
	IfMsgBox, No
		FileAppend,`nshowinfo=false,settings.txt 
}

IfNotInString, settings, runAtStartup=true
{
	MsgBox,4,Run at startup?, Do you want this program to run when windows starts?
	IfMsgBox, Yes
	{
		SplitPath, A_Scriptname, , , , OutNameNoExt 
		LinkFile=%A_StartupCommon%\%OutNameNoExt%.lnk		
		FileCreateShortcut, %A_ScriptFullPath%, %LinkFile%
		FileAppend,`nrunAtStartup=true,settings.txt
	}
}

::arent::aren't
::cant::can't
::couldnt::couldn't
::didnt::didn't
::doesnt::doesn't
::dont::don't
::hadnt::hadn't
::havent::haven't
::hed::he'd
::i::I
::ii::i
::id::I'd
::ill::I'll
::im::I'm
::ive::I've
::isnt::isn't
::its::it's
::howd::how'd
::lets::let's
::mustnt::mustn't
::shant::shan't
::shell::she'll
::shes::she's
::shouldnt::shouldn't
::thats::that's
::theres::there's
::theyd::they'd
::theyll::they'll
::theyre::they're
::theyve::they've
::wed::we'd
::weve::we've
::werent::weren't
::whatll::what'll
::whatre::what're
::whats::what's
::whatve::what've
::wheres::where's
::whod::who'd
::wholl::who'll
::whos::who's
::whove::who've
::wont::won't
::wouldnt::wouldn't
::youd::you'd
::youll::you'll
::youre::you're
::youve::you've
::itss::its'
::ure:: you're
::sry::sorry
::ty::thank you
::rly::really

Pause::Suspend
^+r::Reload