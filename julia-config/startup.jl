using Crayons
import OhMyREPL: Passes.SyntaxHighlighter

### Revise
#try
#    using Revise
#catch e
#    @warn(e.msg)
#end


### OhMyREPL
atreplinit() do repl
    try
        @eval using OhMyREPL
        OhMyREPL.input_prompt!(">")
        SyntaxHighlighter.add!("savq", create_savq_colorscheme())
        OhMyREPL.colorscheme!("savq")
    catch e
        @warn "error while importing OhMyREPL" e
    end
end


#Colorscheme for OhMyREPL
function create_savq_colorscheme()
    SyntaxHighlighter.ColorScheme(
        Crayon(foreground = :light_blue),   # symbol
        Crayon(foreground = :dark_gray),    # comment
        Crayon(foreground = :green),        # string
        Crayon(foreground = :default),      # call
        Crayon(foreground = :light_blue),   # op
        Crayon(foreground = :yellow),       # keyword
        Crayon(foreground = :default),      # text
        Crayon(foreground = :default),      # function_def
        Crayon(foreground = :red),          # error
        Crayon(foreground = :light_blue),   # argdef
        Crayon(foreground = :light_yellow), # _macro
        Crayon(foreground = :light_magenta) # number
    )
end
