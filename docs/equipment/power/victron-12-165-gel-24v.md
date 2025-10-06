---
title: "Victron 12-165 GEL (24V Bank)"
parent: "Power"
grand_parent: "Equipment"
nav_order: 12
---

# Victron 12-165 GEL (24V Bank)

- Type: 12V 165Ah GEL (VRLA), configured as 24V bank
- Use: Legacy/aux battery bank for 24V systems

## Installed
- Quantity: 4 units installed
- Bank arrangement: 2S2P (two series pairs in parallel, 24V nominal)

## Configuration Notes
- Two 12V 165Ah GEL batteries in series for 24V nominal, with two such series strings in parallel (2S2P).
- Observe Victron recommended charge voltages for GEL chemistry.
- Ensure temperature-compensated charging if available.

## Capacity
- Per battery: `12V × 165Ah = 1,980Wh` (1.98kWh)
- Bank topology: `2S2P` → 24V nominal, `Ah` sums in parallel: `165Ah × 2 = 330Ah`
- Total energy (theoretical): `24V × 330Ah = 7,920Wh` (7.92kWh)
- Usable energy (typical guidance for GEL):
  - 50% DoD (long life): ≈ 3.96kWh
  - 80% DoD (shorter life): ≈ 6.34kWh

## Datasheet
- External link: https://www.victronenergy.com/upload/documents/Datasheet-GEL-and-AGM-Batteries-EN.pdf
- Local copy: [Datasheet (PDF)](docs/equipment/power/victron-12-165-gel-24v/manuals/victron-12-165-gel-datasheet.pdf)
