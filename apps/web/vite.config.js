import { defineConfig } from 'vite';
import viteNxProjectPaths from '@nxext/vite/src/executors/utils/nx-project-paths';
import handlebars from 'vite-plugin-handlebars';

const nxPlugin = viteNxProjectPaths({ workspaceRoot: process.cwd() });

const handlebarsPlugin = handlebars();

/**
 * @type {import('vite').UserConfig}
 */
const config = {
  plugins: [nxPlugin, handlebarsPlugin],
  server: {
    port: 4200
  },
  build: {
    target: 'esnext'
  }
};

export default defineConfig(config);
