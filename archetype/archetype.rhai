let context = #{};

context += prompt("Binary:", "binary", #{
  help: "Application Executable Command Name",
});
context += prompt("Description:", "description", #{
  help: "Application Description",
});
context += prompt("Homepage:", "homepage", #{
    help: "Application Homepage",
    placeholder: render("https://{{ binary }}.github.io", context),
  });
context += prompt("Version:", "version", #{
    help: "Application Version Number",
    placeholder: "1.0.0",
});

let platforms = prompt("Platforms:", #{
    defaults_with: [],
    type: MultiSelect([
        "Linux x86_64",
        "Linux arm64",
        "MacOS x86_64",
        "MacOS arm64",
    ]),
    help: "Formula Platforms",
    optional: true,
});

if platforms.contains("Linux x86_64") {
  context += prompt("Linux x86_64 Download URL:", "linux-x86_64_archive");
  context += prompt("Linux x86_64 SHA256 Hash:", "linux-x86_64_sha256");
}
if platforms.contains("Linux arm64") {
  context += prompt("Linux arm64 Download URL:", "linux-arm64_archive");
  context += prompt("Linux arm64 SHA256 Hash:", "linux-arm64_sha256");
}
if platforms.contains("MacOS x86_64") {
  context += prompt("MacOS x86_64 Download URL:", "macos-x86_64_archive");
  context += prompt("MacOS x86_64 SHA256 Hash:", "macos-x86_64_sha256");
}
if platforms.contains("MacOS arm64") {
  context += prompt("MacOS arm64 Download URL:", "macos-arm64_archive");
  context += prompt("MacOS arm64 SHA256 Hash:", "macos-arm64_sha256");
}

render(Directory("contents"),  ANSWERS + context, #{
  if_exists: Overwrite,
});
