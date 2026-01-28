# Homebrew Tap for kcomp

This is the official Homebrew tap for [kcomp](https://github.com/khaledalam/kcomp), a high-performance compression utility.

## Installation

```bash
brew install khaledalam/kcomp/kcomp
```

Or:

```bash
brew tap khaledalam/kcomp
brew install kcomp
```

## Usage

```bash
# Compress a file
kcomp c input.txt output.kc

# Decompress a file
kcomp d output.kc restored.txt

# Benchmark compression
kcomp b testfile.txt
```

## About kcomp

kcomp implements an ensemble of compression algorithms including:

- **PPM** (Prediction by Partial Matching) orders 1-6
- **LZ77 variants** (LZ77, LZOpt, LZX, LZMA-style)
- **BWT** (Burrows-Wheeler Transform) with MTF encoding
- **Context Mixing** (PAQ-style neural network mixer)

The hybrid compressor automatically evaluates 50+ compression pipelines and selects the one producing the smallest output.

### Benchmark Results

kcomp wins **69%** of benchmark tests against gzip, brotli, xz, and zstd:

```
                    WINS
kcomp    ███████████████████████████  11  (69%)
brotli   ███████                       3  (19%)
xz       ██                            1  (6%)
zstd     ██                            1  (6%)
gzip     ░                             0  (0%)
```

## Updating

```bash
brew upgrade kcomp
```

## Uninstalling

```bash
brew uninstall kcomp
brew untap khaledalam/kcomp  # optional
```

## Links

- [kcomp Repository](https://github.com/khaledalam/kcomp)
- [Issue Tracker](https://github.com/khaledalam/kcomp/issues)
- [Author: Khaled Alam](https://khaledalam.net)

## License

MIT License
