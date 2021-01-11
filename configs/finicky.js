module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      match: "*",
      browser: ["Google Chrome", "Safari"],
    },
    {
      match: /^https?:\/\/vas3k\.club\/.*$/,
      browser: "Safari",
    },
    {
      match: "open.spotify.com*",
      browser: "Spotify",
    },
    {
      match: /zoom.us\/j\//,
      browser: "us.zoom.xos",
    },
  ],
};
