class {{ binary | pascal_case }} < Formula
  desc "{{ description }}"
  homepage "{{ homepage }}"
  version "{{ version }}"{% if linux-x86_64_archive or linux-arm64_archive %}

  on_linux do
    {% if linux-x86_64_archive %}if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "{{ linux-x86_64_archive }}"
      sha256 "{{ linux-x86_64_sha256 }}"
    end{% endif %}{% if linux-arm64_archive %}
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "{{ linux-arm64_archive }}"
      sha256 "{{ linux-arm64_sha256 }}"
    end{% endif %}
  end{% endif %}{% if macos-x86_64_archive or macos-arm64_archive %}

  on_macos do{% if macos-x86_64_archive %}
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "{{ macos-x86_64_archive }}"
      sha256 "{{ macos-x86_64_sha256 }}"
    end{% endif %}{% if macos-arm64_archive %}
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "{{ macos-arm64_archive }}"
      sha256 "{{ macos-arm64_sha256 }}"
    end{% endif %}
  end{% endif %}

  def install
    bin.install "{{ binary }}"
  end

  test do
    system "#{bin}/{{ binary }} --version"
  end

end
