# -*- encoding: utf-8 -*-

module Pdf

  class Generator

    # Genrates a pdf from html
    # - generator = Pdf::Generator.new "<body><strong>Hello World</strong></body>"
    # You can either use the following in order to get the pdf as a string
    # - generator.to_pdf
    # Or you can save it to a file
    # - generator.save('path/to/file.pdf')

    def initialize(html, *args)
      @html  = html
      @font_paths = args
    end

    def to_pdf
      IO.popen "java -jar #{jar_path} #{@font_paths.join(' ')}", "r+" do |cmd|
        cmd.write @html
        cmd.close_write
        pdf = cmd.read
      end
    end

    def save(filepath)
      File.open(filepath, 'w') { |f| f.write(to_pdf) }
    end

    def jar_path
      File.join(Pdf.root_path, 'ext','HtmlToPdf.jar')
    end
  end

end