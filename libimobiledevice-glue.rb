# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LibimobiledeviceGlue < Formula
  desc ""
  homepage ""
  license ""
  head "https://github.com/libimobiledevice/libimobiledevice-glue.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libplist"

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "install"
  end
end
