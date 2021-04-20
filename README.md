A Pandoc+LaTeX template for exams.
To use, run

```
pandoc --pdf-engine lualatex --template exam-template.tex --lua-filter exam-filter.lua example.md --output example.pdf
```

See [this blog post for more information](https://idrissi.eu/en/post/exam-template/).
