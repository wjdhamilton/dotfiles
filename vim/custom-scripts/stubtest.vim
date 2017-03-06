function WriteSpec()
  let names = input('name(s):')
  let fileType = expand('%:e')
  let nameParts = split(names, ':')

  if fileType == "rb"
    let description = nameParts[0]
    let code = "it \"" . description . "\" do \n \n end"
  endif

  if fileType == "hs"
    if len(nameParts) < 2
      echoerr "Please submit a string as {methodName:specTitle}"
      return
    endif
    let code = nameParts[0] . " :: Spec \n" . nameParts[0] . "= \n it \"" . nameParts[1] . "\" $ do \n"
  endif

  put =code

endfunction


