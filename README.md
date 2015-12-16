#An Experiment in Non-Linear Literary Criticism 
#Literary Criticism

To state the obvious, literary criticism typically takes the form of a story, centered around a central theme or argument.  

![Narrative Criticism](images/narrative-criticism.png)

#Textual Notes

This edition is derived from [the GITenberg edition of _The Garden Party and Other Stories_]. The text was marked up using the Extensible Markup Language (XML) format of the [Text Encoding Initiative] (TEI). This format, the standard markup language for archival literary projects, is a semantic markup language---unlike markup languages like HTML 4.0, which describe how a text should *look*, i.e. `<i>The Garden Party</i>`, TEI XML describes what the text *is*, i.e. `<title>The Garden Party</title>`. This allows text segments to be selected based on their literary attributes rather than their formatting. 

[The TEI text] is transformed to HTML using `xsltproc` and [an XSL stylesheet], and combined with this introductory text, which is transformed from markdown into HTML using `pandoc`. The files are combined using `sed`, and the compilation process automated using [a Makefile] written for `GNU make`. [A short jQuery script] handles the interactive tag behavior. 

Since the text has been broken into segments, pilcrow marks (¶) have been used to denote the beginnings of paragraphs as they appeared in the original text. 

This edition has been made using exclusively free and open-source software. This textual commentary and the source code for this project is released under the GNU Public License v3, the full text of which is available in [the included license].

[Text Encoding Initiative]: http://www.tei-c.org/index.xml
[the GITenberg edition of _The Garden Party and Other Stories_]: https://github.com/GITenberg/The-Garden-Party-and-Other-Stories_1429
[The TEI text]: https://github.com/JonathanReeve/corpus-mansfield-garden-party-TEI/blob/master/header.md
[an XSL stylesheet]: https://github.com/JonathanReeve/corpus-mansfield-garden-party-TEI/blob/master/header.md
[A short jQuery script]: https://github.com/JonathanReeve/corpus-mansfield-garden-party-TEI/blob/master/header.md
[the markdown source for this header text]: https://github.com/JonathanReeve/corpus-mansfield-garden-party-TEI/blob/master/header.md
[a makefile]: https://github.com/JonathanReeve/corpus-mansfield-garden-party-TEI/blob/master/Makefile
[the included license]: https://github.com/JonathanReeve/corpus-mansfield-garden-party-TEI/blob/master/LICENSE

#Instructions

1. Read the full text of the story. 
2. Find a passage that interests you, and read the commentary for that passage. 
3. Click on a tag in that commentary that interests you. Notice that you're taken to another annotation that has this tag. 
4. Continue to follow the tag you've chosen until you've read all annotations with that tag. Alternatively, click on another tag, and follow its thread.
