# Review Journal

I treated `vista-trade-portfolio-hub` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its trading systems focus without claiming live deployment or external usage.

## Cases

- `baseline`: `spread pressure`, score 132, lane `watch`
- `stress`: `fill risk`, score 161, lane `ship`
- `edge`: `portfolio drift`, score 133, lane `watch`
- `recovery`: `quote width`, score 186, lane `ship`
- `stale`: `spread pressure`, score 176, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
