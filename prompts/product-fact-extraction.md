# Product Fact Extraction Prompt

Used by the parser step: PDF product flyer -> structured JSON fact set -> flattened
to one fact per line for the RAG vector store.

This is the most recent revision of the prompt, with two fixes folded in from
evaluation of the last run:
- The SCHEMA now defines the document-level `category` field (it was being
  confused with the `facts[].category` enum).
- Evaluative adjectives ("intuitive", "smart", "effortless") are now explicitly
  excluded even when attached to a real feature.

---

```
You extract structured product facts from a supplier product flyer (PDF).

INPUTS
- The attached PDF flyer.
- FILENAME: {{FILENAME}}   e.g. "SCT671710-FLYER.pdf"

TASK
Return a single JSON object matching the SCHEMA below. Extract every verifiable
product fact stated or shown in the flyer, including text baked into images/badges
and the specification table.

IDENTITY
- primary_sku = the SKU in FILENAME (the token before the first "-"). It matches
  our catalogue schema; use it verbatim.
- product_name = the full brand + model + range/tier as written in the flyer body
  (e.g. "Aspire Elio Small Scooter"), NOT just the styled heading. Normalise casing
  to Title Case. If the heading and the body text disagree, prefer the body's full
  form.
- variants[] = every SKU shown in the flyer (including primary_sku), each with the
  attribute that distinguishes it (e.g. colour) and its value.
- brand = manufacturer brand shown on the flyer (not the distributor/supplier).

WHAT TO INCLUDE (as facts[])
- Capabilities: what the product can do and where it is designed to be used.
- Mechanisms: how systems work or their type (suspension type, brake type,
  motor/controller type, drive/free-wheel).
- Modifications: anything adjustable or reconfigurable — disassembly into parts,
  adjustable/removable/swivel/folding components, adjustable seat or tiller,
  free-wheel mode.
- Materials / construction: frame material, tyre construction, etc.
- Performance: speed, range, climbing angle, turning ability.
- Power system: battery, motor, controller, charger electrical specifications.
- Weights: product weight, heaviest part, component weights.
- Safety: brakes, safe working load / user weight limit, stability features.
- Comfort, controls, warranty terms, intended use.
- Optional items and upgrades: set "optional": true and record "part_number"
  when the flyer gives one.

WHAT TO EXCLUDE
- Physical dimensions and geometry: overall L x W x H, seat dimensions, seat/
  armrest/footrest heights, ground clearance, wheel diameter, turning radius in mm.
  (You may still state a qualitative capability like "small turning circle".)
- Document metadata: revision codes, publication or revision dates, print codes.
- Contact details, URLs, phone numbers, page headers/footers, logos.
- Marketing phrasing that asserts no checkable fact ("perfect blend of strength
  and comfort"). If a marketing sentence contains a concrete fact, keep only the
  fact, rephrased plainly.
- Evaluative adjectives (intuitive, smart, effortless, sleek, premium) even when
  attached to a real feature — state the feature plainly without them.

FACT RULES
- One atomic claim per statement. Split compound sentences and split bundled
  properties (e.g. "height-adjustable swivelling padded seat" becomes three facts).
- Every statement must begin with the full product_name (brand + model), never a
  shortened, styled, or all-caps form, and must be self-contained — no pronouns,
  no "it".
- Preserve all numbers and units exactly as printed; do not convert or round.
- Do not infer, estimate, or add anything not present in the flyer.
- If the same fact appears in both prose and the spec table, output it once.
- Merge a component's type/spec and its performance figure into one fact when they
  describe the same optional part (e.g. an optional battery's capacity + its range).
- State the driving range achievable with an optional battery only on that
  battery's own fact (with its part_number), not as a separate performance fact.
- Do not restate variant colour/SKU information as facts if it is already captured
  in variants[].
- When the flyer's prose and its spec table give different values for the same
  attribute, use the specific spec-table value.
- id = "{primary_sku}-{01, 02, ...}" in reading order.
- component: one of battery, motor, controller, charger, brake, seat, tiller,
  frame, wheels, suspension, dashboard — or null.
- facts[].category: one of identity, capability, mechanism, modification, material,
  performance, power_system, safety, comfort, controls, weight, warranty,
  intended_use, variant_option.

OUTPUT
Return only the JSON object. No commentary, no markdown fences.

SCHEMA
{
  "product_name": string,
  "primary_sku": string,
  "brand": string,
  "category": string,          // the PRODUCT category as a free-text noun phrase,
                               // e.g. "mobility scooter" — NOT a facts[].category value
  "source_file": string,       // = FILENAME
  "variants": [ { "sku": string, "attribute": string, "value": string } ],
  "facts": [
    {
      "id": string,
      "statement": string,
      "category": string,              // one of the facts[].category values above
      "component": string | null,
      "optional": boolean,
      "part_number": string | null,
      "applies_to_sku": string | null  // null = applies to all SKUs
    }
  ]
}
```
