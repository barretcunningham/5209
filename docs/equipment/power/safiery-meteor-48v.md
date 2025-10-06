---
title: "Safiery Meteor 48V Lithium Batteries"
parent: "Power"
grand_parent: "Equipment"
nav_order: 10
---

# Safiery Meteor 48V Lithium Batteries

- Type: 48V LiFePO4 battery system (Safiery Meteor series)
- Use: House battery bank and high-voltage DC bus

## Installed
- Quantity: 16 units installed
- Bank arrangement: 1S16P (sixteen 48V modules in parallel)

## Configuration Notes
- Record battery model, capacity (Ah/Wh), and BMS version.
- Note CAN/RS485 integrations, charge limits, and low-temp cutoffs.
- Document charger profiles (bulk/absorb/float) and voltage limits.

-## Capacity
- Bank topology: `1S16P` → 48V nominal, `Ah` sums in parallel
- Per-module capacity: `~2,500Wh` at 48V (≈ `52.1Ah`)
- Total bank capacity (theoretical):
  - Ah at 48V: `16 × 52.1Ah ≈ 833.6Ah`
  - Energy: `16 × 2,500Wh = 40,000Wh` (40.0kWh)
- Usable energy (LiFePO4 typical):
  - 80% DoD: `≈ 32.0kWh`
  - 90% DoD: `≈ 36.0kWh`
> Model reference: Safiery Meteor 48V 2,500Wh sealed safe lithium battery.

## Manuals
- Local manual: [Safiery Meteor 48V Manual (PDF)](docs/equipment/power/safiery-meteor-48v/manuals/safiery-meteor-48v-manual.pdf)
- If you prefer external hosting, add the URL here.

## Maintenance
- Periodically verify BMS firmware and cell balance status.
- Check torque on battery terminals and inspect cabling.
