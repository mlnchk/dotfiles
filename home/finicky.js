module.exports = {
  defaultBrowser: ["Arc", "Safari"],
  handlers: [
    {
      match: "open.spotify.com/*",
      browser: "Spotify",
    },
    // {
    //   match: "linear.app/*",
    //   browser: "Linear",
    // },
    {
      match: "around.co/*",
      browser: "Around",
    },
    // {
    //   match: "figma.com/file/*",
    //   browser: "Figma",
    // },
    {
      match: [
        "zoom.us/j/*",
        finicky.matchDomains(/.*\zoom.us\/j/),
        /zoom.us\/j\//,
      ],
      browser: "us.zoom.xos",
    },
  ],
};
