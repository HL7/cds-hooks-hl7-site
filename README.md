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
$ ./retrieve-canonical-content.sh
$ mkdocs serve
```

4. Using a browser, go to `http://127.0.0.1:8000/`

Anytime you make a change to the content within the site, your browser should automatically refresh to show your changes in real-time.

## Publishing

This repository supports the publication and management of the HL7 CDS Hooks site, sourced from the content in the cds-hooks community site. The retrieve-canonical-content script copies the latest content from the cds-hooks community repository to this repository for publication.

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
