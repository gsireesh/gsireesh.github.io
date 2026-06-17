---
layout: page
title: TractorBeam
description: A browser extension to let users build, iterate on, and evaluate AI highlighting tools.
img: assets/img/tractor-beam-screenshot.png
importance: 1
category: work
---

<video width="100%" autoplay loop muted playsinline title="TractorBeam -- adding a highlight and running machine annotation">
  <source src="{{ '/assets/img/tb-gif.mp4' | relative_url }}" type="video/mp4">
</video>

TractorBeam is a browser extension that allows users to define, iterate on, and evaluate AI
highlighting systems on PDFs. These highlight systems can serve a variety of purposes — reading
support and document indexing, acting like a sort of semantic ctrl-F; rapid
prototyping for information extraction systems, e.g. extracting all instances of names,
materials, or abstract concepts from a document; and adversarial refinement of your own
understanding of a domain: updating your mental model based on the differences between how you
think of it and how an AI highlights it.

## Background

TractorBeam takes the form of a _collaborative annotation_ tool: a tool that allows a group of
users to jointly highlight the contents of a document. Systems like this (including
[Hypothesis](https://hypothes.is) and [Genius](https://genius.com)) allow shared meaning making
through these highlights: people can see what other people found interesting, notes and comments
can facilitate discussion, and the highlights are direct responses to the text that _remain
grounded to that text_: users are reading comments alongside the text that originated them.

These properties of collaborative annotation are also really useful for AI: hallucinations are
less of a concern if you're seeing an AI's results in light of the original document, and
evaluating whether an AI is doing a good job is a lot easier when you see what it's drawing from.
I wrote about some of the benefits of collaborative annotation for machine learning in a paper
at the [Science and Technology of Augmented Reading Workshop](https://chi-star-workshop.github.io/)
at CHI 2026, and you can find my paper [here](<https://chi-star-workshop.github.io/src/assets/pdf/papers/CHI_STAR_26__Collaborative_Annotation_as_an_Interface_Metaphor_for_Personalizable_AI_Reading_Support%20(3)%20-%20Sireesh%20Gururaja.pdf>).

While TractorBeam doesn't support collaboration with other users yet, it frames AI as a
collaborative annotator on the same documents you read, in a very common, existing PDF reader
(Mozilla's [pdf.js](https://mozilla.github.io/pdf.js/)).
The AI highlights are clearly marked as separate from yours, and you can choose to use them to
either better reflect your mental model in instances, or to refine the model's behavior and
re-run it.

If you'd like to try TractorBeam, [shoot me an email!](mailto:sgururaj@cs.cmu.edu)

TractorBeam's [privacy policy is available here]({{ '/tractorbeam/privacy/' | relative_url }}).
