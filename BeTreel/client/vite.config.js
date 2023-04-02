import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import postcss from './postcss.config.js'
// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    port: 3000,
  },
  css: {
    postcss,
  },
})
