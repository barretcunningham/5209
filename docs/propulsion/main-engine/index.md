# Main Engine — Yanmar JH‑CR Series

Concise, field‑ready operating guidance for the installed Yanmar JH‑CR common‑rail diesel. For full details, limits, and model specifics, consult the official manual: [2025 Yanmar JH‑CR Operation Manual (OCR source)](2025-yanmar-jhcr-en-ocr.txt) and [2025 Yanmar JH‑CR PDF](2025-yanmar-jhcr-en.pdf). SD‑15 details: [SD15 Specification Sheet](sd15-spec-sheet-2021.pdf).

## Installed Configuration

- Engine model: 4JH110 (JH‑CR series)
- Drive: Saildrive — Yanmar SD15 (see: https://www.yanmar.com/marine/fr/product/drives/sd15/)
- SD15 leg length: <confirm S or L>
- Control panel: VC20
- Propeller: <confirm type, blades, pitch>
- Throttle/shift: <confirm mechanical vs. electronic, brand/model>
- Alternator(s): <confirm rating(s) and any secondary/48V systems>
- Raw‑water strainer: <confirm location and service access>
- Start battery: <confirm type/capacity and isolation method>

## Safety & Pre‑Start Checks (Daily)

- Engine space: no fuel/oil/coolant leaks; belts/hoses/wiring sound; intakes clear.
- Fluids at marks: engine oil, coolant header tank, marine gear/saildrive oil.
- Raw water: seacock OPEN; strainer clean/primed; exhaust outlet unobstructed.
- Fuel: primary filter/separator bowl clear; drain water if present.
- Electrical: engine/ECU battery switch ON; do not turn off during operation.
- Panel self‑test: Power switch ON — all panel alarm lamps/buzzer prove for ~4 s, then hour meter shows. If lamps/buzzer do not prove, investigate before use.
- Ventilation: ensure fresh air; avoid CO accumulation in enclosed spaces.

## Start — VC20 Vessel Control System (summary)

- Neutral: remote control handle in `N` (neutral); throttle at idle; “SEL” lamp per station.
- Power on: press Power switch at selected station; if “YANMAR E‑key” is set, present key fob; if “Sys on by ID” is set, enter Owner ID.
- Start by ID: if enabled, enter Owner ID; engine can start ~10 s after entry.
- Start: press Engine `START/STOP` to crank; release when engine fires. Do not crank >15 s; allow a pause between attempts.
- If repeated cranking: to avoid filling the waterlock/muffler, CLOSE the seacock during further cranks; once the engine fires, STOP it immediately, re‑open seacock, then restart normally.

## After Start — Immediate Checks

- Gauges/alarms: all alarms clear; instruments normal.
- Coolant temperature: normal operating ~76–90 °C (169–194 °F).
- Oil pressure: at ~3000 rpm, typical 0.28–0.54 MPa (41–78 psi). Verify trend at idle and with rpm.
- Seawater discharge: strong/steady at exhaust outlet within ~10–20 s; if weak/absent, STOP immediately and rectify.
- Leaks/noise/smoke: no abnormal vibration, noise, or black smoke (overloading indicator).
- Warm‑up: keep low speed with boat stopped briefly to distribute oil before applying load.

## Operating Notes

- Throttle/shift: move handle smoothly; always pause at idle before gear changes; avoid partial engagement and high‑rpm shifts (gear damage risk).
- Light‑load idling: avoid extended low‑load running; when prolonged low‑speed is unavoidable, race in neutral briefly about every 2 hours to clear carbon (five quick accelerations from idle to high rpm).
- Battery switch: never turn battery switch OFF during operation. After shutdown, wait ≥6 s after Power OFF before switching battery OFF to allow the ECU to settle.
- Periodically operate near max rated rpm underway to keep exhaust system clean and maintain performance.

## Normal Shutdown (VC20)

!!! danger "Critical: Alternator Damage Risk (Undocumented)"
    **You MUST turn the control panel Power switch OFF after stopping the engine.** Failure to do so will destroy the 24V alternator. This critical requirement is **NOT documented in the Yanmar operation manual** but has been confirmed through field failure. Always follow the complete shutdown sequence below.

- Neutral: return to `N`; idle without load ~5 minutes (especially after high load/turbo heat‑soak).
- Stop: press Engine `START/STOP` to stop; **then press Power switch to turn panel OFF**.
- ECU settle: wait ≥6 seconds before turning the engine/ECU battery switch OFF.
- Secure: close fuel tank cock and raw‑water seacock when leaving the vessel or where flooding/freezing is a risk.
- Saildrive folding/feathering props (if fitted): with engine OFF for sailing, shift to REVERSE to fold/feather per prop maker guidance.

## Emergency Stops

- Emergency Stop switch (panel): press to stop immediately. Use only for emergencies; alarms may be set on next power‑on. To clear, cycle Power OFF, wait ≥6 s, then ON.
- Auxiliary Stop switch (ECU cover or optional remote): press to stop immediately. “AUX STP” appears on the panel. Release by returning the switch to RUN. Engine cannot start while AUX STOP is engaged.

## If the Engine Fails to Start

- Limit crank duration to ≤15 s; allow cool‑down between attempts.
- If multiple attempts are needed, CLOSE the seacock during cranking to prevent water ingress; after a fire, STOP, reopen seacock, then restart.
- Do not use starting aids (ether). If fuel starvation suspected, bleed per manual procedure.

## New‑Engine Break‑In (first 50 h)

- 0–10 h: operate mostly at max rpm minus 400–500 min⁻¹ (≈60–70% load). Avoid WOT >1 minute; avoid prolonged low‑speed/light‑load.
- 10–50 h: use full operating range; emphasize relatively high power. About every 30 min, include ~10 min at max minus 200 min⁻¹ (≈80% load) and 4–5 min at WOT. Do not idle/light‑load >30 min; if unavoidable, race briefly afterward.
- Monitor coolant 71–87 °C; record hours. Perform “After initial 50 h” maintenance per schedule.

## Daily Post‑Operation

- Power OFF confirmed; battery switch OFF (after ECU settle); fill fuel tank; close seacock(s).
- If freezing risk: verify correct coolant mix; drain raw‑water side or use heater per manual.

## Alarms & Indicators (overview)

- High coolant temperature; low oil pressure; charging fault; water in fuel/restriction; ECU/engine management fault.
- Follow the manual’s alarm table and troubleshooting flow; record any codes/messages from the VC20 display.

## Maintenance Schedule

Perform maintenance according to engine hours or calendar intervals, whichever comes first. Items marked with ⚠ should be performed by an authorized YANMAR dealer.

### Daily (Pre-Operation Checks)

- Visual inspection of engine exterior for leaks/damage
- Check fuel level and refill if necessary
- Check engine oil level
- Check marine gear/saildrive oil level
- Check coolant level
- Check seawater outlet during operation
- Check alarm and indicators

### Every 50 Hours or Monthly

- Drain fuel/water separator
- Check battery electrolyte level
- Adjust alternator V-ribbed belt tension (⚠ Initial 50 hours only)
- ⚠ Adjust intake/exhaust valve clearance (Initial 50 hours only)
- ⚠ Check remote control cable operation (Initial 50 hours only)
- ⚠ Adjust propeller shaft alignment (Initial 50 hours only)

### After Initial 50 Hours (Break-In Service)

- Replace engine oil
- Replace engine oil filter
- Replace marine gear oil
- Replace marine gear oil filter (if equipped)
- Drain water and sediment from fuel tank

### Every 250 Hours or 1 Year

- Replace engine oil
- Replace engine oil filter
- Replace marine gear oil
- Replace marine gear oil filter (if equipped)
- Drain water and sediment from fuel tank
- Adjust alternator V-ribbed belt tension
- Check wiring connectors
- Tighten all major nuts and bolts
- ⚠ Check remote control cable operation

### Every 500 Hours or 2 Years

- Replace fuel filter element
- Check or replace seawater pump impeller
- Clean intake silencer (air cleaner) element
- Clean or replace exhaust/water mixing elbow
- Wash turbocharger blower (4JH80/4JH110 only)
- Replace alternator V-ribbed belt
- Replace rubberized hoses (fuel and water)

### Every 1000 Hours or 4 Years

- Clean and check seawater passages
- Check diaphragm assembly (3JH40/4JH45/4JH57 only)
- ⚠ Adjust intake/exhaust valve clearance
- ⚠ Check remote control cable operation
- ⚠ Adjust propeller shaft alignment

### Annual or As Specified

- **Replace coolant:** Every year for standard coolant; every 2 years when using Yanmar Long Life Coolant (LLC)
- **Replace rubberized hoses (fuel and water):** Every 2 years

!!! note "Maintenance Records"
    Keep detailed logs of all maintenance performed, including dates, hours, parts used, and any observations. These procedures are considered normal maintenance and are performed at owner's expense.

## Fluids and Capacities — 4JH110

- Engine oil: API CD/CF/CF‑4/CI/CI‑4; SAE 10W‑30 or 15W‑40
- Engine oil capacity (total): 5.5 L at 7° rake; 6.7 L at 0°
- Engine oil (oil pan only): 5.2 L at 7°; 6.4 L at 0°
- Engine oil (effective): 2.4 L
- Coolant: Long Life Coolant (LLC) 30–60% with clean/soft water
- Coolant capacity: Engine 7.2 L; reservoir 0.8 L
- Saildrive (SD15) oil: ATF (YANMAR parts code: ATF‑1L) — capacity 6 L
- Fuel: ULSD; follow manual for biodiesel content limits

## References

- Manual (OCR): [2025 Yanmar JH‑CR Operation Manual](2025-yanmar-jhcr-en-ocr.txt)
- Manual (PDF): [2025 Yanmar JH‑CR Operations Manual](2025-yanmar-jhcr-en.pdf)
- Saildrive: [SD15 Specification Sheet (2021)](sd15-spec-sheet-2021.pdf)

## Manual TOC References

- New Engine Break‑In: p. 12
- Product Overview > Control Equipment > Instrument Panel (B25/C35): p. 20
- Alarms / Checking Warning Devices: p. 30–31
- Engine Operation (general): p. 61
- Operation (VC20: Vessel Control System): p. 86–103
  - Starting / Station Protect / Sys on by ID / Start by ID / Yanmar E‑key: p. 86–89
  - If the Engine Fails to Start / Low‑Temp Start / After Start: p. 93
  - Throttle & Shift Control: p. 95
  - Cautions During Operation: p. 96
  - Shut‑Down / Emergency Stop / Backup Panel / After Operation: p. 98–103
- Fluids & Specs: Engine Oil p. 51–54; Marine Gear/Saildrive Oil p. 53–54; Coolant p. 55–56
- Periodic Maintenance (overview): p. 105–113
  - Daily Checks: p. 116
  - After Initial 50 Hours: p. 117
  - Periodic Maintenance Procedures: p. 116; Schedule: p. 113
  - Every 50/250/500/1000 hours: p. 123/125/132/133
- Draining Seawater Cooling System (winterization): p. 148
- Troubleshooting After Starting: p. 135+
