# -*- encoding: utf-8 -*-

module Pdf

  class Merger

    # Genrates a pdf from html
    # - merger = Pdf::Merger.new 'path/to/file_1.pdf', 'path/to/file_2.pdf',
    # You can either use the following in order to get the pdf as a string
    # - merger.to_pdf
    # Or you can save it to a file
    # - merger.save('path/to/file.pdf')

    def initialize(*args)
      @paths = args
    end

    def to_pdf
      IO.popen "java -jar #{jar_path}", "r+" do |cmd|
        cmd.write @paths.join(' ')
        cmd.close_write
        pdf = cmd.read
      end
    end

    def save(filepath)
      File.open(filepath, 'w') { |f| f.write(to_pdf) }
    end

    def jar_path
      File.join(Pdf.root_path, 'ext', 'PdfMerger.jar')
    end
  end

end