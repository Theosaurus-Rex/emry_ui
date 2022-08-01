// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration

const plugin = require("tailwindcss/plugin");
const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./js/**/*.js",
    "../lib/*_web.ex",
    "../lib/*_web/**/*.*ex",
    "../priv/catalogue/*_web/**/*.*ex",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter", ...defaultTheme.fontFamily.sans],
      },
      dropShadow: {
        xs: "0px 1px 2px rgba(16, 24, 40, 0.05);",
      },
      colors: {
        primary: {
          DEFAULT: "#7F56D9",
          25: "#FCFAFF",
          50: "#F9F5FF",
          100: "#F4EBFF",
          200: "#E9D7FE",
          300: "#D6BBFB",
          400: "#B692F6",
          500: "#9E77ED",
          600: "#7F56D9",
          700: "#6941c6",
          800: "#53389E",
          900: "#42307D",
        },
        gray: {
          25: "#FCFCFD",
          50: "#F9FAFB",
          100: "#F2F4F7",
          200: "#EAECF0",
          300: "#D0D5DD",
          400: "#98A2B3",
          500: "#667085",
          600: "#475467",
          700: "#344054",
          800: "#1D2939",
          900: "#101828",
        },
        error: {
          25: "#FFFBFA",
          50: "#FEF3F2",
          100: "#FEE4E2",
          200: "#FECDCA",
          300: "#FDA29B",
          400: "#F97066",
          500: "#F04438",
          600: "#D92D20",
          700: "#B42318",
          800: "#912018",
          900: "#7A271A",
        },
        warning: {
          25: "#FFFCF5",
          50: "#FFFAEB",
          100: "#FEF0C7",
          200: "#FEDF89",
          300: "#FEC84B",
          400: "#FDB022",
          500: "#F79009",
          600: "#DC6803",
          700: "#B54708",
          800: "#93370D",
          900: "#7A2E0E",
        },
        success: {
          25: "#F6FEF9",
          50: "#ECFDF3",
          100: "#D1FADF",
          200: "#A6F4C5",
          300: "#6CE9A6",
          400: "#32D583",
          500: "#12B76A",
          600: "#039855",
          700: "#027A48",
          800: "#05603A",
          900: "#054F31",
        },
        "gray-blue": {
          25: "#FCFCFD",
          50: "#F8F9FC",
          100: "#EAECF5",
          200: "#D5D9EB",
          300: "#B3B8DB",
          400: "#717BBC",
          500: "#4E5BA6",
          600: "#3E4784",
          700: "#363F72",
          800: "#293056",
          900: "#101323",
        },
        "gray-cool": {
          25: "#FCFCFD",
          50: "#F9F9FB",
          100: "#EFF1F5",
          200: "#DCDFEA",
          300: "#B9C0D4",
          400: "#7D89B0",
          500: "#5D6B98",
          600: "#4A5578",
          700: "#404968",
          800: "#30374F",
          900: "#111322",
        },
        "gray-modern": {
          25: "#FCFCFD",
          50: "#F8FAFC",
          100: "#EEF2F6",
          200: "#E3E8EF",
          300: "#CDD5DF",
          400: "#9AA4B2",
          500: "#697586",
          600: "#4B5565",
          700: "#364152",
          800: "#202939",
          900: "#121926",
        },
        "gray-neutral": {
          25: "#FCFCFD",
          50: "#F9FAFB",
          100: "#F3F4F6",
          200: "#E5E7EB",
          300: "#D2D6DB",
          400: "#9DA4AE",
          500: "#6C737F",
          600: "#4D5761",
          700: "#384250",
          800: "#1F2A37",
          900: "#111927",
        },
        "gray-iron": {
          25: "#FCFCFC",
          50: "#FAFAFA",
          100: "#F4F4F5",
          200: "#E4E4E7",
          300: "#D1D1D6",
          400: "#A0A0AB",
          500: "#70707B",
          600: "#51525C",
          700: "#3F3F46",
          800: "#26272B",
          900: "#18181B",
        },
        "gray-true": {
          25: "#FCFCFC",
          50: "#FAFAFA",
          100: "#F5F5F5",
          200: "#E5E5E5",
          300: "#D6D6D6",
          400: "#A3A3A3",
          500: "#737373",
          600: "#525252",
          700: "#424242",
          800: "#292929",
          900: "#141414",
        },
        "gray-warm": {
          25: "#FDFDFC",
          50: "#FAFAF9",
          100: "#F5F5F4",
          200: "#E7E5E4",
          300: "#D7D3D0",
          400: "#A9A29D",
          500: "#79716B",
          600: "#57534E",
          700: "#44403C",
          800: "#292524",
          900: "#1C1917",
        },
        moss: {
          25: "#FAFDF7",
          50: "#F5FBEE",
          100: "#E6F4D7",
          200: "#CEEAB0",
          300: "#ACDC79",
          400: "#86CB3C",
          500: "#669F2A",
          600: "#4F7A21",
          700: "#3F621A",
          800: "#335015",
          900: "#2B4212",
        },
      },
      spacing: {
        4.5: "1.125rem",
      },
      fontSize: {
        "display-2xl": [
          "4.5rem",
          {
            lineHeight: "5.625rem",
            letterSpacing: "-0.02em",
          },
        ],
        "display-xl": [
          "3.75rem",
          {
            lineHeight: "4.625rem",
            letterSpacing: "-0.02em",
          },
        ],
        "display-lg": [
          "3rem",
          {
            lineHeight: "3.75rem",
            letterSpacing: "-0.02em",
          },
        ],
        "display-md": [
          "2.25rem",
          {
            lineHeight: "2.75rem",
            letterSpacing: "-0.02em",
          },
        ],
        "display-sm": [
          "1.875rem",
          {
            lineHeight: "2.375rem",
          },
        ],
        "display-xs": [
          "1.5rem",
          {
            lineHeight: "2rem",
          },
        ],
        xl: [
          "1.25rem",
          {
            lineHeight: "1.875rem",
          },
        ],
        lg: [
          "1.125rem",
          {
            lineHeight: "1.75rem",
          },
        ],
        md: [
          "1rem",
          {
            lineHeight: "1.5rem",
          },
        ],
        sm: [
          "0.875rem",
          {
            lineHeight: "1.25rem",
          },
        ],
        xs: [
          "0.75rem",
          {
            lineHeight: "1.125rem",
          },
        ],
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    plugin(({ addVariant }) =>
      addVariant("phx-no-feedback", ["&.phx-no-feedback", ".phx-no-feedback &"])
    ),
    plugin(({ addVariant }) =>
      addVariant("phx-click-loading", [
        "&.phx-click-loading",
        ".phx-click-loading &",
      ])
    ),
    plugin(({ addVariant }) =>
      addVariant("phx-submit-loading", [
        "&.phx-submit-loading",
        ".phx-submit-loading &",
      ])
    ),
    plugin(({ addVariant }) =>
      addVariant("phx-change-loading", [
        "&.phx-change-loading",
        ".phx-change-loading &",
      ])
    ),
  ],
};
