# Blogby

Blogby is a static blog generator, with which I have created my personal blog. It is still under construction, although I will have something up and running very soon.

## To-Do

- [ ] Implement `blogby server`.
- [ ] Implement `blogby fetch [file_name]`, which would grab a list of .md files from predefined directories in a config file, if no file_name is given. The command takes an optional argument, which is the name of the file you wish to import.
- [ ] Implement `blogby rebuild` which will have a look at the config file, and make corresponding changes to the css files.

- [ ] Implement `blogby pin [post_name]`, which will show you a list of the currently pinned posts.
- [ ] Implement `blogby pin remove [post_name]` and `blogby pin add [post_name]`, which will enable you to modify the pinned posts. For now, the order will be chronological.

- [ ] Implement a markdown to HTML conversion engine
- [ ] Implement a `feed.atom` system
- [ ] Implement a way to update the sitemap whenever a blog post is added

- [ ] Implement a way to switch from light mode to dark mode. E.g. `blogby theme light`. This would change the CSS, and then apply it to every page.
- [x] Store the header, footer, and CSS separately, so they can be assembled later
- [ ] Enable blogby.rb to add the CSS, header, and footer, to each file, eliminating the need for JS
- [ ] When a new post is added, the empty `posts` template will be used, in order to completely re-generate the list of posts on the main page, thus also enabling pagination
- [ ] Include a JSON file with each post. This will contain information such as the post `id`, the original `published` data, etc. This way, if the post is re-generated, the original information can be retrieved

- [ ] Implement code blocks, so you can showcase code
- [ ] Implement syntax highlights in the code blocks
