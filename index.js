const express = require("express");
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
const app = express();
const port = process.env.PORT || 3001;

app.use(express.json());

const userRoutes = require("./routes/users");

app.use("/users", userRoutes);

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
