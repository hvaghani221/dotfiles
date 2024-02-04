return {
  analyses = {
    nilness = true,
    unusedparams = true,
    unusedwrite = true,
    useany = true,
  },
  experimentalPostfixCompletions = true,
  gofumpt = true,
  -- staticcheck = true,
  --
  -- DISABLED because gopls doesn't invoke the staticcheck binary.
  -- Instead it imports the analyzers directly and this means it can report on issues the binary doesn't.
  -- But rather than that being a good thing, it can be annoying because you can't then use line directives to ignore the issue if it's not important.
  -- So instead I use null-ls to invoke the staticcheck binary.
  -- https://github.com/golang/go/issues/36373#issuecomment-570643870
  --
  -- See also my longer explanation of issues here:
  -- https://github.com/golangci/golangci-lint/issues/741#issuecomment-1488116634
  usePlaceholders = true,
  hints = {
    assignVariableTypes = true,
    compositeLiteralFields = true,
    compositeLiteralTypes = true,
    constantValues = true,
    functionTypeParameters = true,
    parameterNames = true,
    rangeVariableTypes = true,
  },
}
