import type { FinickyConfig } from "/Applications/Finicky.app/Contents/Resources/finicky.d.ts";

const browsers = {
  DEFAULT: "Zen",
  WORK: "Helium",
} as const;

const domains = {
  work: [
    /.*\.adapty\.io/,
    "gitlab.adapty.io",
    "adaptyio.atlassian.net",
    "notion.so/adapty",
    "calendar.google.com",
    "meet.google.com",
  ],
  personal: ["youtube.com", "reddit.com", "x.com"],
} as const;

const apps = {
  work: ["Slack", "Figma"],
  personal: ["Telegram"],
} as const;

export default {
  defaultBrowser: browsers.DEFAULT,

  handlers: [
    {
      // Work domains
      match: (url) =>
        domains.work.some((domain) => {
          if (typeof domain === "string") {
            return url.host === domain || url.href.includes(domain);
          }
          return domain.test(url.host);
        }),
      browser: browsers.WORK,
    },

    {
      // Localhost development servers
      match: (url) => url.host.startsWith("localhost"),
      browser: browsers.WORK,
    },

    {
      // Personal domains
      match: (url) =>
        domains.personal.some((domain) => {
          if (typeof domain === "string") {
            return url.host === domain || url.href.includes(domain);
          }
          // return domain.test(url.host);
          return false;
        }),
      browser: browsers.DEFAULT,
    },

    {
      // Links from work apps
      match: (_url, { opener }) =>
        apps.work.some((app) => opener?.name?.includes(app)),
      browser: browsers.WORK,
    },

    {
      // Links from personal apps
      match: (_url, { opener }) =>
        apps.personal.some((app) => opener?.name?.includes(app)),
      browser: browsers.DEFAULT,
    },
  ],

  rewrite: [
    // Optional URL rewrites
  ],

  options: {
    // logRequests: true, // Enable during setup to see what's being matched
    hideIcon: true,
  },
} satisfies FinickyConfig;
