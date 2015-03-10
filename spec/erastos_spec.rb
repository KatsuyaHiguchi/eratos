require File.expand_path(File.dirname(__FILE__) + '/../erastos')

describe Erastos do
  specify { expect(Erastos.erastos([])).to eq "" }
  specify { expect(Erastos.erastos([10,11])).to eq "" }

  specify { expect(Erastos.erastos([1])).to eq "" }
  specify { expect(Erastos.erastos([2])).to eq "2" }
  specify { expect(Erastos.erastos([3])).to eq "2, 3" }

  specify { expect(Erastos.erastos([30])).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29" }

  specify { expect(Erastos.error?([])).to eq true }
  specify { expect(Erastos.error?([10])).to eq false }
  specify { expect(Erastos.error?([10,11])).to eq true }
end