# PdfTool
This was created when I had to much problems with other known pdf tool libraries for merging and create pdf files from html.

This gem are using following java libs [pdf-merger](https://github.com/Agowan/pdf-merger) and [html-to-pdf](https://github.com/Agowan/html-to-pdf)

## Compatibility
This gem is tested on rails 4.0.5 with ruby 2.1.1

## Install
At the moment before any tests are written and tested in production install it from github
```ruby
gem 'pdftool', github: "agowan/pdftool"
```


## Generate html to pdf

```ruby
generator = Pdf::Generator.new "<body><strong>Hello World</strong></body>"
generator.save('path/to/file.pdf')
```

```ruby
# Returns the pdf inline
generator.to_pdf
```

## Merge existing pdf files from disk

```bash
merger = Pdf::Merger.new 'path/to/file_1.pdf', 'path/to/file_2.pdf'
merger.save('path/to/file.pdf')
```
You can also get the file inline.
```ruby
merger.to_pdf
```

## Contributing

- For it
- Add your code
- Create a pull request