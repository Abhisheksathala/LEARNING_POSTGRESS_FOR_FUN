import app from './app';


(async () => {
  try {
    app.listen(config.PORT || 4000, () => {
      logger.info(
        `THE SERVER IS CONNECT TO THE PORT http://localhost:${config.PORT || 4000}`,
      );
    });
  } catch (error) {
    // logger.error('FILED TO START THE SERVER ', error);
    process.exit(1);
  }
})();

