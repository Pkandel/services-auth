import express from "express";
// import authenticate from "../middleware/authenticate";

const router = express.Router();

router.get("/", (req, res) => {
  return res.json({
    message: "Welcome to the authentication service"
  });
});

// every router after this should be authenticated
// router.use(authenticate);

export default router;
