# Vista Trade Portfolio Hub Walkthrough

This note is the quickest way to read the extra review model in `vista-trade-portfolio-hub`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | spread pressure | 132 | watch |
| stress | fill risk | 161 | ship |
| edge | portfolio drift | 133 | watch |
| recovery | quote width | 186 | ship |
| stale | spread pressure | 176 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
