# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Homebrew tap repository for Archetect, a code-centric, language agnostic content generator. The repository contains:

- `Formula/archetect.rb`: The main Homebrew formula for installing Archetect
- `archetype/`: An Archetect archetype for generating new Homebrew formulas

## Repository Structure

The tap follows standard Homebrew conventions:
- Formula files in `Formula/` directory define how to install packages
- Each formula includes platform-specific URLs, SHA256 checksums, and installation instructions
- The archetype system allows generating new formula files using templates

## Homebrew Formula Development

The workflow automatically generates two types of formulas when triggered:
1. **Base formula**: `Formula/archetect.rb` - always points to the latest version
2. **Versioned formula**: `Formula/archetect@{version}.rb` - allows installing specific versions

### Formula Updates
When a repository_dispatch event is triggered with new version data:
1. The base formula is regenerated using the `{{ binary }}.rb` template
2. The versioned formula is generated using the `{{ binary }}@{{ version }}.rb` template with Jinja syntax in the filename
3. Old versioned formulas are cleaned up (only the 5 most recent versions are kept)
4. All changes are committed and pushed automatically

### Formula Structure
- Version number in line 4: `version "x.y.z"`
- Platform-specific download URLs and SHA256 checksums
- Conditional platform detection with `on_linux` and `on_macos` blocks
- Class names for versioned formulas follow pattern: `{Binary}AT{version}` (dots replaced with underscores)

## Archetype System

The `archetype/` directory contains a template system for generating Homebrew formulas:
- `archetype.yaml`: Defines archetype metadata and requirements
- `archetype.rhai`: Interactive prompts for collecting formula data
- `contents/Formula/{{ binary }}.rb`: Base formula template
- `contents/Formula/{{ binary }}@{{ version }}.rb`: Versioned formula template with Jinja filename syntax
- Template variables include: `{{ binary }}`, `{{ description }}`, `{{ homepage }}`, `{{ version }}`, and platform-specific archive URLs and checksums
- Versioned formulas use class name pattern: `{{ binary | pascal_case }}AT{{ version | replace(".", "_") }}`

## Testing Formula Changes

Test formula installation locally:
```bash
brew install --build-from-source ./Formula/archetect.rb
brew test archetect
```

The formula includes a basic test that verifies the binary can be executed with `--version` flag.