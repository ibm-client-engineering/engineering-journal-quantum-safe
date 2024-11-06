import starlight from '@astrojs/starlight';
import tailwind from '@astrojs/tailwind';
import { defineConfig, passthroughImageService } from 'astro/config';
import rehypeMermaid from 'rehype-mermaid';

import d2 from "astro-d2";

// https://astro.build/config
export default defineConfig({
  outDir: './build',
  site: 'https://pages.github.ibm.com/',
  base: '/ibm-client-engineering/engineering-journal-quantum-safe/',
  image: {
    service: passthroughImageService(),
  },
  build: {
    assets: 'css'
  },
  integrations: [starlight({
    title: 'IBM Quantum Safe',
    logo: {
      src: './src/assets/IBM_logo®_rev_blue50_RGB.png'
    },
    customCss: [
    // Relative path to your custom CSS file
    './src/styles/css/custom.css', './src/styles/css/tailwind.css'],
    social: {
      github: 'https://github.ibm.com/ibm-client-engineering/engineering-journal-quantum-safe'
    },
    // Populate sidebar directories here
    sidebar: [
      {
        label: 'Forward',
        autogenerate: {
          directory: 'how-we-work'
        }
      },{
        label: 'Overview',
        link: 'overview'
      },{
        label: 'QSR',
        items: [
          {
            label: 'Adaptive Proxy',
            autogenerate: {
              directory: 'QSR/Adaptive_Proxy'
            }
          },{
            label: 'Performance Test Harness',
            autogenerate: {
              directory: 'QSR/Performance_Test_Harness'
            }
          }
        ],
      },{
        label: 'QSE',
        autogenerate: {
          directory: 'QSE'
        }
      },{
        label: 'Guardium Insights',
        autogenerate: {
          directory: 'Guardium_Insights'
        }
      },{
        label: 'Reference',
        items: [
          {
            label: 'QSR',
            badge: 'IBM',
            link: 'https://www.ibm.com/docs/en/quantum-safe/quantum-safe-remediator/1.0.x',
          },
          {
            label: 'QSE',
            badge: 'IBM',
            link: 'https://www.ibm.com/docs/en/quantum-safe/quantum-safe-explorer/1.0.x',
          },
          {
            label: 'Guardium Insights',
            badge: 'IBM',
            link: 'https://www.ibm.com/docs/en/guardium-insights/3.x?topic=scenarios-installation-amazon-elastic-kubernetes-service-eks',
          }
        ]
      }
    ]
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