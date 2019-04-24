#!/bin/bash

# This script retrieves the canonical CDS Hooks specification content and
# places it into the appropriate locations.
#
# Each new release/ballot will require an entry.

# May 2018 ballot
# Due how the ballot was constructured (the entire site instead of just the
# normative specification content), the contents of the May 2018 ballot were
# manually built from https://github.com/cds-hooks/docs/tree/ballots/2018May
# and copied into the ballots/2018May directory.
# Future ballots will be retrieved like the 1.0 release below.

# 1.0 release
echo 'Retrieving the 1.0 release...'
mkdir -p docs/1.0
curl https://raw.githubusercontent.com/cds-hooks/docs/master/docs/specification/1.0.md > docs/1.0/index.md
