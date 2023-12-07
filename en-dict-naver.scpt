on run {input, parameters}
	set output to "https://en.dict.naver.com/#/search?range=all&query=" & replaceSpace(input as string)
	return output
end run

on replaceSpace(x)
	set cmd to "'require \"cgi\"; puts CGI.escape(STDIN.read.chomp)'"
	do shell script "echo " & quoted form of x & "| ruby -e " & cmd & "| sed 's/+/%20/g'"
end replaceSpace
