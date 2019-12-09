import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import mongoose from "mongoose";
import config from "./config";
import routes from "./routes";

const app = express();

// Middleware setup
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

// Database setup
mongoose.connect(config.mongo_url + config.mongo_port);
const db = mongoose.connection;
db.on("error", console.error.bind(console, "connection error:"));
db.once("open", () => {
  console.log("Successfully connected to the database");
});

// Router Middleware
app.use("/", routes);

app.listen(config.port, () => {
  console.log(`Application is running in port ${config.port}`);
});
