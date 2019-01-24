highlight clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "mojave-dark"

highlight ColorColumn   ctermfg=7     ctermbg=8
highlight Comment       ctermfg=8
highlight Conceal       ctermfg=7     ctermbg=7
highlight Constant      ctermfg=1
highlight CursorColumn                ctermbg=7
highlight CursorLine                                cterm=underline
highlight CursorLineNr  ctermfg=3
highlight DiffAdd       ctermfg=0     ctermbg=2
highlight DiffChange    ctermfg=0     ctermbg=3
highlight DiffDelete    ctermfg=0     ctermbg=1
highlight DiffText      ctermfg=0     ctermbg=11    cterm=bold
highlight Directory     ctermfg=4
highlight Error         ctermfg=15    ctermbg=9
highlight ErrorMsg      ctermfg=15    ctermbg=1
highlight FoldColumn    ctermfg=7     ctermbg=8
highlight Folded        ctermfg=7     ctermbg=8
highlight Identifier    ctermfg=6                   cterm=NONE
highlight Ignore        ctermfg=15
highlight IncSearch                                 cterm=reverse
highlight LineNr        ctermfg=8
highlight MatchParen                  ctermbg=14
highlight ModeMsg                                   cterm=bold
highlight MoreMsg       ctermfg=2
highlight NonText       ctermfg=12
highlight Pmenu         ctermfg=15    ctermbg=8
highlight PmenuSbar                   ctermbg=8
highlight PmenuSel      ctermfg=8     ctermbg=15
highlight PmenuThumb                  ctermbg=0
highlight PreProc       ctermfg=5
highlight Question      ctermfg=2
highlight Search        ctermfg=0     ctermbg=11
highlight SignColumn                  ctermbg=8
highlight Special       ctermfg=5
highlight SpecialKey    ctermfg=4
highlight SpellBad                    ctermbg=2
highlight SpellCap      ctermfg=7     ctermbg=8
highlight SpellLocal                  ctermbg=14
highlight SpellRare                   ctermbg=5
highlight Statement     ctermfg=3
highlight StatusLine    ctermfg=15    ctermbg=8     cterm=bold
highlight StatusLineNC  ctermfg=7     ctermbg=8     cterm=NONE
highlight TabLine       ctermfg=0     ctermbg=7     cterm=underline
highlight TabLineFill                               cterm=reverse
highlight TabLineSel                                cterm=bold
highlight TermCursor                                cterm=reverse
highlight Title         ctermfg=5
highlight Todo          ctermfg=0     ctermbg=11
highlight Type          ctermfg=2
highlight Underlined    ctermfg=5                   cterm=underline
highlight VertSplit     ctermfg=7     ctermbg=8     cterm=NONE
highlight Visual        ctermfg=NONE  ctermbg=NONE  cterm=inverse
highlight WarningMsg    ctermfg=1
highlight WildMenu      ctermfg=0     ctermbg=11

highlight link cssBraces Delimiter
highlight link cssClassName Special
highlight link cssClassNameDot Normal
highlight link cssPseudoClassId Special
highlight link cssTagName Statement
highlight link helpHyperTextJump Constant
highlight link htmlArg Constant
highlight link htmlEndTag Statement
highlight link htmlTag Statement
highlight link jsonQuote Normal
highlight link phpVarSelector Identifier
highlight link pythonFunction Title
highlight link rubyDefine Statement
highlight link rubyFunction Title
highlight link rubyInterpolationDelimiter String
highlight link rubySharpBang Comment
highlight link rubyStringDelimiter String
highlight link sassClass Special
highlight link shFunction Normal
highlight link vimContinue Comment
highlight link vimFuncSID vimFunction
highlight link vimFuncVar Normal
highlight link vimFunction Title
highlight link vimGroup Statement
highlight link vimHiGroup Statement
highlight link vimHiTerm Identifier
highlight link vimMapModKey Special
highlight link vimOption Identifier
highlight link vimVar Normal
highlight link xmlAttrib Constant
highlight link xmlAttribPunct Statement
highlight link xmlEndTag Statement
highlight link xmlNamespace Statement
highlight link xmlTag Statement
highlight link xmlTagName Statement
highlight link yamlKeyValueDelimiter Delimiter
highlight link CtrlPPrtCursor Cursor
highlight link CtrlPMatch Title
highlight link CtrlPMode2 StatusLine
highlight link deniteMatched Normal
highlight link deniteMatchedChar Title
highlight link jsFlowMaybe Normal
highlight link jsFlowObject Normal
highlight link jsFlowType PreProc
highlight link graphqlName Normal
highlight link graphqlOperator Normal
highlight link jsArrowFunction Operator
highlight link jsClassDefinition Normal
highlight link jsClassFuncName Title
highlight link jsExport Statement
highlight link jsFuncName Title
highlight link jsFutureKeys Statement
highlight link jsFuncCall Normal
highlight link jsGlobalObjects Statement
highlight link jsModuleKeywords Statement
highlight link jsModuleOperators Statement
highlight link jsNull Constant
highlight link jsObjectFuncName Title
highlight link jsObjectKey Identifier
highlight link jsSuper Statement
highlight link jsTemplateBraces Special
highlight link jsUndefined Constant
highlight link markdownBold Special
highlight link markdownCode String
highlight link markdownCodeDelimiter String
highlight link markdownHeadingDelimiter Comment
highlight link markdownRule Comment
highlight link ngxDirective Statement
highlight link plug1 Normal
highlight link plug2 Identifier
highlight link plugDash Comment
highlight link plugMessage Special
highlight link SignifySignAdd GitGutterAdd
highlight link SignifySignChange GitGutterChange
highlight link SignifySignChangeDelete GitGutterChangeDelete
highlight link SignifySignDelete GitGutterDelete
highlight link SignifySignDeleteFirstLine SignifySignDelete
highlight link StartifyBracket Comment
highlight link StartifyFile Identifier
highlight link StartifyFooter Constant
highlight link StartifyHeader Constant
highlight link StartifyNumber Special
highlight link StartifyPath Comment
highlight link StartifySection Statement
highlight link StartifySlash Comment
highlight link StartifySpecial Normal
highlight link svssBraces Delimiter
highlight link swiftIdentifier Normal
highlight link typescriptAjaxMethods Normal
highlight link typescriptBraces Normal
highlight link typescriptEndColons Normal
highlight link typescriptFuncKeyword Statement
highlight link typescriptGlobalObjects Statement
highlight link typescriptHtmlElemProperties Normal
highlight link typescriptIdentifier Statement
highlight link typescriptMessage Normal
highlight link typescriptNull Constant
highlight link typescriptParens Normal
