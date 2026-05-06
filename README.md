# vista-trade-portfolio-hub

`vista-trade-portfolio-hub` explores trading systems with a small Zig codebase and local fixtures. The technical goal is to design a Zig verification harness for portfolio systems, covering constraint solving, bounded scenario files, and failure-oriented tests.

## Why I Keep It Small

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Vista Trade Portfolio Hub Review Notes

For a quick review, compare `quote width` with `spread pressure` before reading the middle cases.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for spread pressure and fill risk.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vista-trade-portfolio-walkthrough.md` walks through the case spread.
- The Zig code includes a review path for `quote width` and `spread pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Zig path is deliberately direct, with fixtures doing most of the explaining.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The check exercises the source code and the review fixture. `recovery` is the high score at 186; `baseline` is the low score at 132.

## Scope

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
