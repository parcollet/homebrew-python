class Mako < Formula
  desc "Template library for Python"
  homepage "http://www.makotemplates.org"
  url "https://pypi.python.org/packages/56/4b/cb75836863a6382199aefb3d3809937e21fa4cb0db15a4f4ba0ecc2e7e8e/Mako-1.0.6.tar.gz"
  sha256 "48559ebd872a8e77f92005884b3d88ffae552812cdf17db6768e5c3be5ebbe0d"

  depends_on :python

  def install
    system "python", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "python", "-c", "import mako.template"
  end
end
