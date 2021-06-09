<p align="center">
  <img src="https://github.com/cds-hooks/hl7-site/raw/master/logo.png">
</p>

# CDS Hooks

[![Build Status](https://api.travis-ci.org/cds-hooks/hl7-site.svg)](https://travis-ci.org/cds-hooks/hl7-site)

CDS Hooks is a vendor agnostic remote decision support standard. This repository contains the content for the CDS Hooks HL7 website (https://cds-hooks.hl7.org).

## Getting Started

This repository is built using the [MkDocs](http://www.mkdocs.org/) static site generator. In order to run the site locally or build this project, you will need to [install Python 2.7.13+](http://docs.python-guide.org/en/latest/starting/installation/).

1. Clone the repository

```sh
$ git clone https://github.com/HL7/cds-hooks-hl7-site
```

2. Install the project dependencies

```sh
$ cd cds-hooks-hl7-site
$ pip install -r requirements.txt
```

3. Run the site locally

```sh
$ mkdocs serve
```

4. Using a browser, go to `http://127.0.0.1:8000/`

Anytime you make a change to the content within the site, your browser should automatically refresh to show your changes in real-time.

### Build Note:

The latest versions of Python (3.8+) introduced an infrastructural change to the way event processing works on Windows that effectively requires implementations to select an event processing loop policy, which results in the following error on windows when running the mkdocs serve command:

```
[I 210609 20:57:29 server:298] Serving on http://127.0.0.1:8000
Traceback (most recent call last):
File "c:\python38\lib\runpy.py", line 192, in _run_module_as_main
return _run_code(code, main_globals, None,
File "c:\python38\lib\runpy.py", line 85, in _run_code
exec(code, run_globals)
File "C:\Python38\Scripts\mkdocs.exe\__main__.py", line 7, in <module>
File "c:\python38\lib\site-packages\click\core.py", line 764, in __call__
return self.main(*args, **kwargs)
File "c:\python38\lib\site-packages\click\core.py", line 717, in main
rv = self.invoke(ctx)
File "c:\python38\lib\site-packages\click\core.py", line 1137, in invoke
return _process_result(sub_ctx.command.invoke(sub_ctx))
File "c:\python38\lib\site-packages\click\core.py", line 956, in invoke
return ctx.invoke(self.callback, **ctx.params)
File "c:\python38\lib\site-packages\click\core.py", line 555, in invoke
return callback(*args, **kwargs)
File "c:\python38\lib\site-packages\mkdocs\__main__.py", line 128, in serve_command
serve.serve(
File "c:\python38\lib\site-packages\mkdocs\commands\serve.py", line 124, in serve
_livereload(host, port, config, builder, site_dir)
File "c:\python38\lib\site-packages\mkdocs\commands\serve.py", line 58, in _livereload
server.serve(root=site_dir, host=host, port=port, restart_delay=0)
File "c:\python38\lib\site-packages\livereload\server.py", line 300, in serve
self.application(
File "c:\python38\lib\site-packages\livereload\server.py", line 255, in application
app.listen(port, address=host)
File "c:\python38\lib\site-packages\tornado\web.py", line 2042, in listen
server.listen(port, address)
File "c:\python38\lib\site-packages\tornado\tcpserver.py", line 144, in listen
self.add_sockets(sockets)
File "c:\python38\lib\site-packages\tornado\tcpserver.py", line 157, in add_sockets
self._handlers[sock.fileno()] = add_accept_handler(
File "c:\python38\lib\site-packages\tornado\netutil.py", line 268, in add_accept_handler
io_loop.add_handler(sock, accept_handler, IOLoop.READ)
File "c:\python38\lib\site-packages\tornado\platform\asyncio.py", line 79, in add_handler
self.asyncio_loop.add_reader(
File "c:\python38\lib\asyncio\events.py", line 501, in add_reader
raise NotImplementedError
NotImplementedError
```

The mkdocs package uses a livereload package, which in turn uses a tornado package that has not been updated to address the issue (and does not appear to be maintained). The mkdocs team has [acknowledged the issue and prepared a fix](https://github.com/mkdocs/mkdocs/issues/1885), however, an updated release of mkdocs with the fix applied has not been released. As a result, we provide the following workaround as part of this repository:

1. Locate the `asyncio.py` file in your python directory, inside the `tornado\platform` package (e.g. `c:\python38\lib\site-packages\tornado\platform\asyncio.py`)
2. Copy the patched `asyncio.py` file appropriate for your installed version of Python from the [python-fix](python-fix) directory, overwriting the `asyncio.py` file in your installation.

This should correct the issue and allow you to run mkdocs serve as expected.

## Publishing

This repository supports the publication and management of the HL7 CDS Hooks site, sourced from the content in the cds-hooks community site.

## Adding Release or Ballot Content

1. Create the new release/ballot directory
2. Copy the release/ballot content from the canonical source: https://raw.githubusercontent.com/cds-hooks/docs/master/docs/specification/current.md
3. Update the `mkdocs.yml` file to include the new release/ballot directory in the `nav:` section
4. Update the `docs\index.md` file to include information on the release
5. If this is a ballot addition, update the `docs\ballots\index.md` file to include information on the ballot

## Adding Hook Definition Content

Hooks are built and published as separate specifications to support the evolution of hooks independent of the evolution of the CDS Hooks specification. Hooks are published in folders underneath the `hooks` directory, with folder names corresponding to the name of the hook, and sub-folders for balloted and released content. To add or update a hook:

1. Create the new hook release/ballot directory (e.g. `hooks\patient-view`)
2. Copy the new hook release/ballot content from the canonical source: (e.g. https://raw.githubusercontent.com/cds-hooks/docs/master/docs/hooks/patient-view.md)
3. Update the `mkdocs.yml` file to include the new hook release/ballot directory in the `Hooks:` section of the `nav:` block
4. Add a `history\history.md` file to the hook folder, or update it if it is already present

## License

All Markdown content in this repository is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

Unless otherwise noted, the contents of this repository
are licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
