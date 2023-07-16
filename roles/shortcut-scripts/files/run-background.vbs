' Source: https://stackoverflow.com/questions/41225711/wsl-run-linux-from-windows-without-spawning-a-cmd-window
' Usage: wscript run-background.vbs bash -c <COMMAND>
select case WScript.Arguments(0)
case "-?", "/?", "-h", "--help"
  WScript.echo "Usage: run-background.vbs executable [...]" & vbNewLine & vbNewLine & "Runs the specified command hidden (without a visible window)."
  WScript.Quit(0)
end select

' Separate the arguments into the executable name
' and a single string containing all arguments.
exe = WScript.Arguments(0)
sep = ""
for i = 1 to WScript.Arguments.Count -1
  ' Enclose arguments in "..." to preserve their original partitioning.
  args = args & sep & WScript.Arguments(i)
  sep = " "
next

' Execute the command with its window *hidden* (0)
WScript.CreateObject("Shell.Application").ShellExecute exe, args, "", "open", 0
