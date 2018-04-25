const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();

  await page.goto('http://localhost');
  await page.screenshot({
    path: 'landing-page.png',
    fullPage: true
  });

  browser.close();
})();