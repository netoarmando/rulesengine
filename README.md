# Replay Rules Engine

The Replay Rules Engine is a piece of software which allows for a set of rules to be created which affect playback of URLs in the Wayback Machine. These effects can be to block a playback, allow a playback, or modify the playback contents before playing back the request.

## Running

The project can be run with `make run`, which uses [uv](https://docs.astral.sh/uv/) to manage dependencies and run the Django server.

The rules engine is built for Python 3.

## Developing

The project uses [uv](https://docs.astral.sh/uv/) for dependency management. 

Development commands:

- `make test` runs all tests via pytest
- `make check` runs ruff linting and format checking
- `make format` applies ruff fixes and formatting

All commands use `uv run` to execute within the managed environment.

## License

Rules engine for interacting with Wayback Machine playbacks
Copyright © 2021 Internet Archive

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
