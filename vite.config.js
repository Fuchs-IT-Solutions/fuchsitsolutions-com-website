import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        impressum: resolve(__dirname, 'impressum.html'),
        datenschutz: resolve(__dirname, 'datenschutz.html'),
        blog: resolve(__dirname, 'blog/index.html'),
        blogCopilot: resolve(__dirname, 'blog/github-copilot-spring-boot-praxisbericht.html'),
      },
    },
  },
});
