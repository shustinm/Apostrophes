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
	MsgBox,3,Apostrophes basics,This program will automatically add apostrophes ( ' ) where they are needed when you type, it will also automatically capitalize the letter "i".`nIf you still want to type "i", you must type "ii" instead.`nPress Control + Shift + R to reload the program`nPress the Pause key on your keyboard to stop it, press again to resume.`nThe Program is already running in the background, try it out!`n`nDo you want to see this message next time you run the program?
	IfMsgBox, No
		FileAppend,`nshowinfo=false,settings.txt 
}

IfNotInString, settings, runAtStartup=false
{
	IfNotInString, settings, runAtStartup=true
	{
		MsgBox,3,Apostrophes, Do you want this program to run when windows starts?
		IfMsgBox, Yes
		{
			SplitPath, A_Scriptname, , , , OutNameNoExt 
			LinkFile=%A_StartupCommon%\%OutNameNoExt%.lnk		
			FileCreateShortcut, %A_ScriptFullPath%, %LinkFile%
			FileAppend,`nrunAtStartup=true,settings.txt
		}
		
		IfMsgBox, No
		{
			FileAppend,`nrunAtStartup=false,settings.txt
		}
	}
}


::aint::ain't
::arent::aren't
::cant::can't
::couldnt::couldn't
::couldve::could've
::didnt::didn't
::doesnt::doesn't
::dont::don't
::hadnt::hadn't
::hasnt::hasn't
::havent::haven't
::hed::he'd
::i::I
::ii::i
:c:id::I'd
:c:Id::I'd
::ill::I'll
::im::I'm
::ive::I've
::isnt::isn't
::its::it's
::howd::how'd
::lets::let's
::mustnt::mustn't
::mustve::must've
::shant::shan't
::shell::she'll
::shelll::shell
::shes::she's
::shouldnt::shouldn't
::thats::that's
::theres::there's
::theyd::they'd
::theyll::they'll
::theyre::they're
::theyve::they've
::wed::we'd
::wedd::wed
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