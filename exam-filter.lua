function Div(el)
        return {
          pandoc.RawBlock("latex", "\\begin{" .. el.classes[1] .. "}"),
          el,
          pandoc.RawBlock("latex", "\\end{" .. el.classes[1] .. "}")
        }
end

function Str(e)
  if e.text == "@q" then
    return pandoc.RawInline("latex", "\\question")
  elseif e.text == "@p" then
    return pandoc.RawInline("latex", "\\part")
  else
    return e
  end
end
