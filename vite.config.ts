import { defineConfig } from "vite";
import { readdirSync } from "node:fs";
import { resolve } from "node:path";

const root = "app";

export default defineConfig({
  root,
  build: {
    outDir: "../dist",
    emptyOutDir: true,
    rollupOptions: {
      // multi-page: every html in app/ is an entry
      input: Object.fromEntries(
        readdirSync(root)
          .filter((f) => f.endsWith(".html"))
          .map((f) => [f.replace(".html", ""), resolve(root, f)]),
      ),
    },
  },
});
