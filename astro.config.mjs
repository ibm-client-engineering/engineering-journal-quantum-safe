import starlight from '@astrojs/starlight';
import tailwind from '@astrojs/tailwind';
import { defineConfig } from 'astro/config';
import rehypeMermaid from 'rehype-mermaid';

import d2 from "astro-d2";

// https://astro.build/config
export default defineConfig({
  outDir: './build',
  site: 'https://pages.github.ibm.com/',
  base: '/ibm-client-engineering/engineering-journal-quantum-safe/',
  build: {
    assets: 'css'
  },
  integrations: [starlight({
    title: 'Forward Foundry',
    logo: {
      src: './src/assets/ibm-logo-svgrepo-com.svg'
    },
    customCss: [
    // Relative path to your custom CSS file
    './src/styles/css/custom.css', './src/styles/css/tailwind.css'],
    social: {
      github: 'https://github.ibm.com/ibm-client-engineering/engineering-journal-quantum-safe'
    },
    // Populate sidebar directories here
    sidebar: [{
      label: 'Forward',
      autogenerate: {
        directory: 'how-we-work'
      }
    }, {
      label: 'Examples',
      autogenerate: {
        directory: 'Examples'
      }
    }, {
      label: 'Reference',
      autogenerate: {
        directory: 'reference'
      }
    }]
  }), tailwind({
    // Disable the default base styles:
    applyBaseStyles: false
  }), d2()],
  markdown: {
    rehypePlugins: [[rehypeMermaid, {
      strategy: "img-svg",
      dark: true
    }]]
  }
});