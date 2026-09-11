import Fastify from "fastify";
import fstatic from "@fastify/static";
import { join } from "node:path";

const fastify = Fastify({
  logger: true,
});

console.log(join(process.cwd(), "app"));

fastify.register(fstatic, { root: join(process.cwd(), "app") });

// Declare a route
fastify.get("/", function (request, reply) {
  reply.sendFile("index.html");
});

// Run the server!
fastify.listen({ port: 3000 }, function (err, address) {
  if (err) {
    fastify.log.error(err);
    process.exit(1);
  }
  // Server is now listening on ${address}
});
