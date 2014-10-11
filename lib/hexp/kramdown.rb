require 'hexp'
require 'kramdown'
require 'hexp/kramdown/converter'

module Hexp
  module Kramdown
    def self.convert(document_or_element)
      Converter.new.convert(
        if document_or_element.is_a? ::Kramdown::Document
          document_or_element.root
        else
          document_or_element
        end
      ).to_hexp
    end
  end
end
