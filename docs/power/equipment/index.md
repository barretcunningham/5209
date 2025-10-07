
# Power Equipment

Chargers, inverters, alternators, solar controllers, and DC distribution components.

Document each device with key configuration notes and link to manuals.

## System Energy Summary
- 48V bank (Safiery Meteor, 1S16P):
  - Theoretical: `16 × 2,500Wh = 40,000Wh` (40.0kWh)
  - Usable (LiFePO4 typical): 80–90% DoD ≈ 32.0–36.0kWh
  - Details: see `docs/equipment/power/safiery-meteor-48v.md`
- 24V bank (Victron GEL, 2S2P):
  - Theoretical: `24V × 330Ah = 7,920Wh` (7.92kWh)
  - Usable (GEL typical): 50–80% DoD ≈ 3.96–6.34kWh
  - Details: see `docs/equipment/power/victron-12-165-gel-24v.md`
- Combined capacity:
  - Theoretical: `40.0 + 7.92 = 47.92kWh`
  - Usable range: `≈ 35.96–42.34kWh` (subject to reserves and DC-DC conversion losses across banks via Scotty V3)
