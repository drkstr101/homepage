const { fontFamily } = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
  ],
  plugins: [require('daisyui'), require('@tailwindcss/forms')],
  daisyui: {
    themes: false, // true: all themes | false: only light + dark | array: specific themes like this ["light", "dark", "cupcake"]
    darkTheme: 'dark', // name of one of the included themes for dark mode
    base: true, // applies background color and foreground color for root element by default
    styled: true, // include daisyUI colors and design decisions for all components
    utils: true, // adds responsive and modifier utility classes
    rtl: false, // rotate style direction from left-to-right to right-to-left. You also need to add dir="rtl" to your html tag and install `tailwindcss-flip` plugin for Tailwind CSS.
    prefix: '', // prefix for daisyUI classnames (components, modifiers and responsive class names. Not colors)
    logs: true, // Shows info about daisyUI version and used config in the console when building your CSS
    themes: [
      {
        light: {
          primary: '#22d3ee',
          secondary: '#6366f1',
          accent: '#22d3ee',
          neutral: '#181A2A',
          'base-100': '#fafafa',
          'base-200': '#f5f5f5',
          'base-300': '#e5e5e5',
          info: '#3ABFF8',
          success: '#36D399',
          warning: '#FBBD23',
          error: '#F87272',
        },
        dark: {
          primary: '#22d3ee',
          secondary: '#6366f1',
          accent: '#22d3ee',
          neutral: '#181A2A',
          'base-100': '#0a0a0a',
          'base-200': '#171717',
          'base-300': '#262626',
          info: '#3ABFF8',
          success: '#36D399',
          warning: '#FBBD23',
          error: '#F87272',
        },
      },
    ],
  },
  theme: {
    fontSize: {
      xs: ['0.875rem', { lineHeight: '1.5rem' }],
      sm: ['1rem', { lineHeight: '1.5rem' }],
      base: ['1.125rem', { lineHeight: '2rem' }],
      lg: ['1.25rem', { lineHeight: '1.75rem' }],
      xl: ['1.5rem', { lineHeight: '2rem' }],
      '2xl': ['2rem', { lineHeight: '3rem' }],
      '3xl': ['2.5rem', { lineHeight: '3rem' }],
      '4xl': ['3rem', { lineHeight: '1' }],
      '5xl': ['3.75rem', { lineHeight: '1' }],
      '6xl': ['4.5rem', { lineHeight: '1' }],
      '7xl': ['6rem', { lineHeight: '1' }],
      '8xl': ['8rem', { lineHeight: '1' }],
    },
    extend: {
      animation: {
        'fade-in': 'fade-in 0.5s linear forwards',
        marquee: 'marquee var(--marquee-duration) linear infinite',
        'spin-slow': 'spin 4s linear infinite',
        'spin-slower': 'spin 6s linear infinite',
        'spin-reverse': 'spin-reverse 1s linear infinite',
        'spin-reverse-slow': 'spin-reverse 4s linear infinite',
        'spin-reverse-slower': 'spin-reverse 6s linear infinite',
      },
      borderRadius: {
        '4xl': '2rem',
        '5xl': '2.5rem',
      },
      colors: ({ colors }) => ({
        neutral: colors.slate,
        primary: colors.cyan,
        secondary: colors.indigo,
        accent: colors.teal,
        white: '#fafafa',
        black: '#0a0a0a',
      }),
      fontFamily: {
        sans: ['Fira Sans', ...fontFamily.sans],
        mono: ['Fira Mono', ...fontFamily.mono],
        // primary text/body font
        book: ['Fira Sans Book', ...fontFamily.sans],
      },
      keyframes: {
        'fade-in': {
          from: {
            opacity: 0,
          },
          to: {
            opacity: 1,
          },
        },
        marquee: {
          '100%': {
            transform: 'translateY(-50%)',
          },
        },
        'spin-reverse': {
          to: {
            transform: 'rotate(-360deg)',
          },
        },
      },
      maxWidth: {
        '2xl': '40rem',
      },
    },
  },
};
