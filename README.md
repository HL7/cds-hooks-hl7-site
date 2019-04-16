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
$ git clone https://github.com/cds-hooks/hl7-site
```

2. Install the project dependencies

```sh
$ cd hl7-site
$ pip install -r requirements.txt
```

3. Run the site locally

```sh
$ ./retrieve-canonical-content.sh
$ mkdocs serve
```

4. Using a browser, go to `http://127.0.0.1:8000/`

Anytime you make a change to the content within the site, your browser should automatically refresh to show your changes in real-time.

## Contributing

We encourage and welcome any contributions to this project.

If you want to report an issue or enhancement, please make sure to browse our [existing issues](https://github.com/cds-hooks/hl7-site/issues) before logging new issues.

In support of a healthy and inclusive community, we use and enforce a [code of conduct](./CODE_OF_CONDUCT.md) for all members of our community. Our code of conduct is adapted from the [Contributor Covenant](http://contributor-covenant.org/).

## Adding Release or Ballot Content

1. Update the `.gitignore` file to include the new release/ballot directory
2. Update the `retrieve-canonical-content.sh` file to retrieve the new release/ballot
3. Update the `mkdocs.yml` file to include the new release/ballot directory in the `nav:` section
4. Update the `docs\index.md` file to include information on the release
5. If this is a ballot addition, update the `docs\ballots\index.md` file to include information on the ballot

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
