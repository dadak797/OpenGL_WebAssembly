import express from "express";
import morgan from "morgan";

const PORT = 8888;
const app = express();
const logger = morgan("dev");

app.use(logger);

// Serve static files from /public
app.use( express.static('public') );

const handleListening = () => console.log(`Server listening on port http://localhost:${PORT}`);
app.listen(PORT, handleListening);