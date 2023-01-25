-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Pascal",
  files = "%.pas$",
  comment = "//",
  patterns = {
    { pattern = "//.-\n",                   type = "comment"  },
    { pattern = { "/%*", "%*/" },           type = "comment"  },
    { pattern = { '"', '"', '\\' },         type = "string"   },
    { pattern = { "[%$%@]?\"", '"', '\\' }, type = "string"   }, -- string interpolation and verbatim
    { pattern = "'\\x%x?%x?%x?%x'",         type = "string"   }, -- character hexadecimal escape sequence
    { pattern = "'\\u%x%x%x%x'",            type = "string"   }, -- character unicode escape sequence
    { pattern = "'\\?.'",                   type = "string"   }, -- character literal
    { pattern = "-?0x%x+",                  type = "number"   },
    { pattern = "-?%d+[%d%.eE]*f?",         type = "number"   },
    { pattern = "-?%.?%d+f?",               type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",     type = "operator" },
    { pattern = "%?%?",                     type = "operator" }, -- ?? null-coalescing
    { pattern = "%?%.",                     type = "operator" }, -- ?. null-conditional
    { pattern = "[%a_][%w_]*%f[(]",         type = "function" },
    { pattern = "[%a_][%w_]*",              type = "symbol"   },
  },
  symbols = {
    -- keywords and contextual keywords
    ["and"] = "keyword",
    ["array"] = "keyword",
    ["as"] = "keyword",
    ["at"] = "keyword",
    ["asm"] = "keyword",
    ["begin"] = "keyword",
    ["case"] = "keyword",
    ["class"] = "keyword",
    ["const"] = "keyword",
    ["constructor"] = "keyword",
    ["destructor"] = "keyword",
    ["dispinterface"] = "keyword",
    ["div"] = "keyword",
    ["do"] = "keyword",
    ["downto"] = "keyword",
    ["else"] = "keyword",
    ["end"] = "keyword",
    ["except"] = "keyword",
    ["exports"] = "keyword",
    ["file"] = "keyword",
    ["final"] = "keyword",
    ["finalization"] = "keyword",
    ["finally"] = "keyword",
    ["for"] = "keyword",
    ["function"] = "keyword",
    ["goto"] = "keyword",
    ["if"] = "keyword",
    ["implementation"] = "keyword",
    ["in"] = "keyword",
    ["inherited"] = "keyword",
    ["initialization"] = "keyword",
    ["inline"] = "keyword",
    ["interface"] = "keyword",
    ["is"] = "keyword",
    ["label"] = "keyword",
    ["mod"] = "keyword",
    ["not"] = "keyword",
    ["object"] = "keyword",
    ["of"] = "keyword",
    ["on"] = "keyword",
    ["or"] = "keyword",
    ["out"] = "keyword",
    ["packed"] = "keyword",
    ["procedure"] = "keyword",
    ["program"] = "keyword",
    ["property"] = "keyword",
    ["raise"] = "keyword",
    ["record"] = "keyword",
    ["repeat"] = "keyword",
    ["resourcestring"] = "keyword",
    ["set"] = "keyword",
    ["sealed"] = "keyword",
    ["shl"] = "keyword",
    ["shr"] = "keyword",
    ["static"] = "keyword",
    ["string"] = "keyword",
    ["then"] = "keyword",
    ["threadvar"] = "keyword",
    ["to"] = "keyword",
    ["try"] = "keyword",
    ["type"] = "keyword",
    ["unit"] = "keyword",
    ["unsafe"] = "keyword",
    ["until"] = "keyword",
    ["uses"] = "keyword",
    ["var"] = "keyword",
    ["while"] = "keyword",
    ["with"] = "keyword",
    ["xor"] = "keyword",
    ["absolute"] = "keyword",
    ["abstract"] = "keyword",
    ["assembler"] = "keyword",
    ["automated"] = "keyword",
    ["cdecl"] = "keyword",
    ["contains"] = "keyword",
    ["default"] = "keyword",
    ["deprecated"] = "keyword",
    ["dispid"] = "keyword",
    ["dynamic"] = "keyword",
    ["export"] = "keyword",
    ["external"] = "keyword",
    ["far"] = "keyword",
    ["forward"] = "keyword",
    ["implements"] = "keyword",
    ["index"] = "keyword",
    ["library"] = "keyword",
    ["local"] = "keyword",
    ["message"] = "keyword",
    ["name"] = "keyword",
    ["namespaces"] = "keyword",
    ["near"] = "keyword",
    ["nodefault"] = "keyword",
    ["overload"] = "keyword",
    ["override"] = "keyword",
    ["package"] = "keyword",
    ["pascal"] = "keyword",
    ["platform"] = "keyword",
    ["private"] = "keyword",
    ["protected"] = "keyword",
    ["public"] = "keyword",
    ["published"] = "keyword",
    ["read"] = "keyword",
    ["readonly"] = "keyword",
    ["register"] = "keyword",
    ["reintroduce"] = "keyword",
    ["requires"] = "keyword",
    ["resident"] = "keyword",
    ["safecall"] = "keyword",
    ["stdcall"] = "keyword",
    ["stored"] = "keyword",
    ["varargs"] = "keyword",
    ["virtual"] = "keyword",
    ["write"] = "keyword",
    ["writeln"] = "keyword",
    ["writeonly"] = "keyword",
    -- types
    ["shortint"] = "keyword2",
    ["byte"] = "keyword2",
    ["char"] = "keyword2",
    ["smallint"] = "keyword2",
    ["integer"] = "keyword2",
    ["word"] = "keyword2",
    ["longint"] = "keyword2",
    ["cardinal"] = "keyword2",
    ["boolean"] = "keyword2",
    ["bytebool"] = "keyword2",
    ["wordbool"] = "keyword2",
    ["longbool"] = "keyword2",
    ["real"] = "keyword2",
    ["single"] = "keyword2",
    ["double"] = "keyword2",
    ["extended"] = "keyword2",
    ["comp"] = "keyword2",
    ["currency"] = "keyword2",
    ["pointer"] = "keyword2",
    -- functions
    ["chr"] = "function",
    ["ord"] = "function",
    ["succ"] = "function",
    ["pred"] = "function",
    ["abs"] = "function",
    ["round"] = "function",
    ["trunc"] = "function",
    ["sqr"] = "function",
    ["sqrt"] = "function",
    ["arctan"] = "function",
    ["cos"] = "function",
    ["sin"] = "function",
    ["exp"] = "function",
    ["ln"] = "function",
    ["odd"] = "function",
    ["eof"] = "function",
    ["eoln"] = "function",
    -- literals
    ["false"] = "literal",
    ["nil"] = "literal",
    ["self"] = "literal",
    ["true"] = "literal",
  },
}

