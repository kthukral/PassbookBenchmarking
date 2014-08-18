require 'benchmark'
require 'rubygems'
require 'zipruby'

Benchmark.bm do |bm|
  bm.report do
    Zip::Archive.open('ziprubypassbooktest.zip', Zip::CREATE) do |ar|
      ar.add_file('pass.json')
      ar.add_file('1.jpg')
      ar.add_file('2.jpg')
    end
  end
end
