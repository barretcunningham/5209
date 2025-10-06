---
title: "Scotty V3 24/48V DC-DC Converter"
parent: "Power"
grand_parent: "Equipment"
nav_order: 11
---

# Scotty V3 24/48V DC-DC Converter

- Type: Bidirectional or unidirectional DC-DC converter (Scotty V3)
- Use: Step-up/step-down between 24V and 48V systems

## Installed
- Quantity: 2 units installed
- Role: Bridge between 24V GEL bank and 48V Meteor bank

## Configuration Notes
- Document input/output voltage configuration and current limits.
- Note enable/ignition wiring, protections, and thermal derating.
- Record any CAN/serial settings and firmware versions.

## Recommended Configuration
Context: Bridge a 48V LiFePO4 bank (Safiery Meteor, 1S16P) to a 24V GEL bank (Victron 12-165, 2S2P).

- Mode
  - Direction: 48V → 24V (buck) enabled
  - Reverse (24V → 48V): disabled (avoid charging LFP from GEL)
  - Parallel units: 2 identical units sharing load (set same targets)

- 24V Output (GEL charging targets at 25°C)
  - Absorption voltage: 28.2–28.8 V
    - 28.2 V for long life (≈14.1 V × 2)
    - 28.8 V for cyclic use (≈14.4 V × 2)
  - Float voltage: 27.6 V (≈13.8 V × 2)
  - Absorption end: tail current ≈ 4% of C or time cap 2 h
    - Tail current basis: 330 Ah bank → 0.04 × 330 ≈ 13 A
    - If tail-current not supported, use time cap only
  - Temperature compensation (if supported): −48 mV/°C from 25°C
    - (−24 mV/°C per 12 V block × 2 in series)

- Current Limits
  - 24V charge current (total for both Scottys): ≤ 66 A (≈0.2 C of 330 Ah GEL bank)
  - Per-unit limit: ≤ 33 A each (or below unit’s continuous rating and wiring/fuse limits)
  - Suggested initial setting: 25–30 A per unit for cooler operation

- 48V Input (LFP source safeguards)
  - Start charge threshold: ≥ 52.5 V
  - Stop/hysteresis: ≤ 51.5 V (resume when above start threshold)
  - Low-voltage hard stop: 50.0 V
  - High-voltage limit: 58.4 V max (16S LiFePO4 full)
  - Note: With 2 units @ 30 A each on 24V side, input current ≈ 30 A × 24 V × 2 / (48 V × η) ≈ 30 A at 48 V (η≈0.95)

- Protections & Control
  - Enable/Ignition: wire to enable only when system is on and cooling available
  - Thermal: ensure airflow; derate current above 40°C as per manual
  - Fault actions: latch-off on OVP/UVP/OTP; require manual reset

> Rationale: Voltages reflect Victron GEL datasheet targets and common LFP limits; current limited to ≈0.2 C for GEL longevity. Adjust per temperature and duty cycle.

## Manuals
- Local manual: [Scotty V3 24/48 Manual (PDF)](docs/equipment/power/scotty-v3-24-48-dcdc/manuals/scotty-v3-24-48-manual.pdf)
- If you prefer external hosting, add the URL here.

## Wiring
- Standard wiring diagram (PDF): [Scotty Wiring Diagram](docs/equipment/power/scotty-v3-24-48-dcdc/manuals/scotty-wiring-diagram.pdf)

## Maintenance
- Inspect connectors, fusing, and ventilation path.
- Verify mounting hardware torque and check for thermal events.
