# websearch-openai

A command-line interface for OpenAI's web search functionality, allowing you to perform web searches through your terminal using OpenAI's models.

## Features

- Send natural language queries to OpenAI with web search capability
- Location-aware searches based on your geographic information
- Configurable OpenAI model selection (gpt-4o, gpt-4o-mini)
- Adjustable search context size
- Markdown output formatting
- JSON output option for further processing
- Persistent configuration through config files

## Requirements

- Bash shell environment
- curl
- jq (JSON processor)
- OpenAI API key
- Optional: md2ansi for rendering markdown output in the terminal

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/websearch-openai.git
   ```

2. Make the script executable:
   ```bash
   chmod +x websearch-openai
   ```

3. Optionally, add to your PATH:
   ```bash
   ln -s "$(pwd)/websearch-openai" ~/bin/websearch-openai
   ```

## Usage

Basic usage:

```bash
websearch-openai "Your search query"
```

With additional context:

```bash
websearch-openai "Your search query" "Additional context"
```

With location information:

```bash
websearch-openai -c US -r CA -C "San Francisco" "Local events this weekend"
```

Save configuration for future searches:

```bash
websearch-openai -S -c US -r NY -C "New York" -t America/New_York
```

For a complete list of options:

```bash
websearch-openai --help
```

## Environment Variables

- `OPENAI_API_KEY`: Your OpenAI API key (required)

## Examples

Search for current weather (will use location data as context):

```bash
websearch-openai "What's the weather like today?"
```

Get local news with specified location:

```bash
websearch-openai -c GB -r LND -C London "Latest local news"
```

Search with a different model and save results to a file:

```bash
websearch-openai -m gpt-4o-mini -o results.md "Latest research on quantum computing"
```

## License

This project is licensed under the GNU General Public License v3.0 - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

