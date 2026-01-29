class Kcomp < Formula
  desc "High-performance compression utility with adaptive algorithm selection"
  homepage "https://github.com/khaledalam/kcomp"
  url "https://github.com/khaledalam/kcomp/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "92f40691b09c9cfcd00b729c224b1c9e1b1ac076f88a757d3e15f1a5beba3fa3"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    bin.install "build/kcomp"
  end

  test do
    # Test compression and decompression
    (testpath/"test.txt").write("Hello, World!")
    system "#{bin}/kcomp", "c", "test.txt", "test.kc"
    system "#{bin}/kcomp", "d", "test.kc", "test_out.txt"
    assert_equal "Hello, World!", (testpath/"test_out.txt").read
  end
end
