class Kcomp < Formula
  desc "High-performance compression utility with adaptive algorithm selection"
  homepage "https://github.com/khaledalam/kcomp"
  url "https://github.com/khaledalam/kcomp/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "56195089bfce1c2356e44a9c85b7d11dd3515f4f16bc88c4d6fb78e00adad8be"
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
