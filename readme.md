# Blogby

Blogby is a static blog generator, with which I have created my personal blog. Is is still under construction, although I will have something up and running very soon.

## To-Do

- [ ] Implement a markdown to HTML conversion engine
- [ ] Implement `fetch`, which would grab .md files from predefined directories in a config file
- [ ] Implement a way to check if the source .md files have been modified, and make changes to the HTML files accordingly
- [ ] Implement a `feed.atom` system
- [ ] Implement a way to update the sitemap whenever a blog post is added
- [ ] Implement a way to pin posts
- [ ] Implement a way to switch from light mode to dark mode. E.g. `blogby theme light`. This would change the CSS, and then apply it to every page.
- [x] Store the header, footer, and CSS separately, so they can be assembled later
- [ ] Enable blogby.rb to add the CSS, header, and footer, to each file, eliminating the need for JS
- [ ] When a new post is added, the empty `posts` template will be used, in order to completely re-generate the list of posts on the main page, thus also enabling pagination
- [ ] Include a JSON file with each post. This will contain information such as the post `id`, the original `published` data, etc. This way, if the post is re-generated, the original information can be retrieved
- [ ] Implement code blocks, so you can showcase code
- [ ] Implement syntax highlights in the code blocks
