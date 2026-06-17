---
layout: page
title: TractorBeam Privacy Policy
permalink: /tractorbeam/privacy/
description: Privacy policy for the TractorBeam browser extension.
---

**Last updated:** June 17, 2026

TractorBeam ("the extension," "we," "us") is a browser extension that lets you
view PDFs and annotate them by defining schemas and running machine-learning
models to extract and label information. This policy explains what data the
extension handles, where that data lives, and the limited circumstances in which
any of it leaves your device.

## The short version

- **We do not operate any servers.** There is no TractorBeam backend, account
  system, or analytics service. The developer never receives your PDFs, your
  annotations, your schemas, or any usage data.
- **Your data stays on your device by default.** PDF content, the schemas you
  create, the annotations you generate, your model settings, and your interface
  preferences are all stored locally in your browser.
- **Data leaves your device only when you choose a cloud model.** If you select
  the Claude (Anthropic) backend, the relevant PDF text and your schema are sent
  to Anthropic to produce annotations. No other backend transmits your content
  off your device.
- **We do not sell your data, use it for advertising, or repurpose it.**

## What data the extension handles

The extension works with the following kinds of data, all of which originate
from you:

- **PDF content** — the text and layout of PDFs you open and choose to annotate.
- **Schemas** — the classification templates you define (class names,
  descriptions, colors, examples).
- **Annotations** — the extracted entities, labels, and their positions produced
  when you run a model, along with timestamps and the associated document and
  schema identifiers.
- **Configuration** — your selected model provider and model, and, if you use a
  local Ollama server, its address.
- **Credentials** — if you use the Claude backend, the Anthropic API key you
  provide.
- **Interface preferences** — such as panel position, theme, and per-document
  schema selection.

## Where your data is stored

All of the data above is stored **locally in your browser**, using Chrome's
extension storage (`chrome.storage.local`) and IndexedDB. This storage is
isolated to the extension and is not transmitted to the developer or to any
third party as part of normal operation. You can remove this data at any time by
clearing the extension's data or uninstalling the extension.

Your Anthropic API key, if provided, is stored in this local extension storage
in order to authenticate your requests to Anthropic. It is sent only to
Anthropic, and only over an encrypted (HTTPS) connection, when you run the Claude
backend.

## When data leaves your device

The extension offers several model backends. What leaves your device depends
entirely on which one you choose:

- **Claude / Anthropic (cloud):** When you run annotations with this backend, the
  text extracted from your PDF and your schema definition are sent over HTTPS to
  Anthropic's API (`https://api.anthropic.com`) using your own API key. This data
  is then handled under Anthropic's terms and
  [privacy policy](https://www.anthropic.com/legal/privacy). In effect, you are directing your
  own data to Anthropic under your own account; the developer does not receive or
  retain it.
- **In-browser models (WebLLM, transformers.js):** Inference runs entirely within
  your browser. Your PDF content and annotations do not leave your device. The
  first time you use an in-browser model, the extension downloads the model's
  weights from a public content delivery network (e.g., the Hugging Face CDN);
  this download contains no PDF content or personal data and is cached for later
  use.
- **Ollama (local):** Inference is sent to an Ollama server running on your own
  machine or local network at an address you configure. Your content does not
  leave the location you specify.

## Data we do not collect

The extension contains **no analytics, telemetry, crash reporting, tracking
pixels, advertising identifiers, or third-party tracking SDKs.** We do not build
user profiles and we do not track your browsing.

## Permissions and why they are needed

- **`storage`** — to save your schemas, annotations, settings, and preferences
  locally.
- **`offscreen`** — to run machine-learning inference in a background document.
- **`tabs`** — to identify the PDF document you are viewing so annotations can be
  associated with the correct file.
- **Host access (`<all_urls>`)** — to operate on PDFs you open regardless of
  where they are hosted. This access is used solely to provide the annotation
  experience on pages you choose to use the extension on; it is not used to read,
  monitor, or collect data from your browsing.

## Children's privacy

The extension is not directed to children and does not knowingly collect data
from children.

## Changes to this policy

We may update this policy as the extension evolves. Material changes will be
reflected by updating the "Last updated" date above.

## Contact

Questions about this policy can be directed to
[sgururaj@cs.cmu.edu](mailto:sgururaj@cs.cmu.edu).
