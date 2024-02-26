const puppeteer = require("puppeteer");
const fs = require("fs");

async function run() {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto(
    "https://kosmetics.com.hk/en/products/clio-killcover-highglow-cushion"
  );

  // Get the value of the product’s name.
  const productName = await page.evaluate(
    () =>
      document.querySelector("#ProductInfo-template--17382929629480__main h1")
        .innerText
  );

  // Get the value of the product’s discounted price with its currency.
  const firstLink = await page.evaluate(
    () =>
      document.querySelector(
        "#Slider-Gallery-template--17382929629480__main img"
      ).src
  );

  // Get the Image URL of the main product image.
  const price = await page.evaluate(
    () =>
      document.querySelector("#price-template--17382929629480__main bdi")
        .innerText
  );

  // Print Value
  const output = `Product's Name                     : ${productName}\nDiscounted Price With Its Currency : ${price}\nProduct Image Link                 : ${firstLink}`;
  console.log(output);

  // Write output to .txt file
  fs.writeFileSync("output.txt", output);

  await browser.close();
}
run();
