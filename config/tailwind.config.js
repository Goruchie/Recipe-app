const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        white: "hsl(0, 0%, 100%)",
        primary: "#744D17",
        secondary: "#202020",
        tertiary: "#484848",
      },
      minWidth: {
        sixty: "60vw",
      },
      padding: {
        '20': "20px",
      },
      screens: {
        // => @media (min-width: 481px) { ... }
        tablet: "481px",

        // => @media (min-width: 769px) { ... }
        laptop: "769px",

        // => @media (min-width: 1025px) { ... }
        desktop: "1025px",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
