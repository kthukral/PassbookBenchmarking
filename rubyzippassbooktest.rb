require 'benchmark'
require 'rubygems'
require 'zip'

Benchmark.bm do |bm|
  bm.report do
    Zip::File.open('rubyzipvidtest.zip', Zip::File::CREATE) do |ar|
      ar.add('pass.json','pass.json')
      ar.add('logo', '1.jpg')
      ar.add('strip','2.jpg')
    end
  end
end
