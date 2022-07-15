A Pandoc+LaTeX template for exams. It contains several files:

- [exam-template.tex](exam-template.tex): The template, to be used with Pandoc.
- [exam-filter.lua](exam-filter.lua): A filter that turns `<div>`'s into LaTeX environments and adds markup for questions and question parts.
- [example.md](example.md): An example Markdown file to illustrate how to use the template.
- [example.pdf](example.pdf): The PDF file produced from the example.
- [.vscode/tasks.json](.vscode/tasks.json): A [Visual Studio Code tasks definition file](https://code.visualstudio.com/docs/editor/tasks).

To use, run

```
pandoc --pdf-engine lualatex --template exam-template.tex --lua-filter exam-filter.lua example.md --output example.pdf
```

See [this blog post for more information](https://idrissi.eu/post/exam-template/).
