#tag IDEScriptBuildStep
	Begin IDEScriptBuildStep Script1 , AppliesTo = 1, Architecture = 0, Target = 0
		if debugBuild then dbg = ".debug"
		dim appNameForShell as string
		appNameForShell = PropertyValue("App.MacOSXAppName") + dbg +".app"
		appNameForShell = replaceall(appNameForShell, " ", "\ ")
		
		dim CountSlashes as Integer = CountFields(ProjectShellPath, "/")
		dim ProjectName as string = NthField(ProjectShellPath, "/", CountSlashes)
		dim ProjectPath as String = Left(ProjectShellPath, Len(ProjectShellPath) - Len(ProjectName))
		
		dim theCommand as String
		theCommand = "rm -rf " + ProjectPath + appNameForShell
		dim theResult as String
		theResult = DoShellCommand(theCommand)
		if theResult <> "" then print theResult
		
		function getShellString(theString as String) as string
		Return ReplaceAll(theString, " ", "\ ")
		end Function
	End
#tag IDEScriptBuildStep
