const path = require("path");
const webpack = require("webpack");
const HTMLWebpackPlugin = require("html-webpack-plugin");
const CopyWebpackPlugin = require("copy-webpack-plugin");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const ENV = process.env.NODE_ENV || "development";

const outdir =
  ENV === "production"
    ? path.resolve(__dirname, "dist")
    : path.resolve(__dirname, "build");

module.exports = [
  {
    entry: "./src/content.js",
    output: {
      filename: "content.js",
      path: outdir
    },
    resolve: {
      modules: ["src", "node_modules"]
    },
    module: {
      rules: [
        {
          test: /\.jsx?$/,
          exclude: /node_modules/,
          use: "babel-loader"
        }
      ]
    },
    devtool: "source-map"
  },
  {
    entry: "./src/background.js",
    output: {
      filename: "background.js",
      path: outdir
    },
    resolve: {
      modules: ["src", "node_modules"]
    },
    module: {
      rules: [
        {
          test: /\.jsx?$/,
          exclude: /node_modules/,
          use: "babel-loader"
        }
      ]
    },
    devtool: "source-map"
  },
  {
    context: path.resolve(__dirname, "src"),
    entry: "./popup.jsx",
    output: {
      filename: "popup.js",
      path: outdir
    },
    resolve: {
      extensions: [".jsx", ".js"],
      modules: ["src", "node_modules"]
    },
    module: {
      rules: [
        {
          test: /\.jsx$/,
          use: ["source-map-loader"],
          enforce: "pre"
        },
        {
          test: /\.jsx?$/,
          exclude: /node_modules/,
          use: "babel-loader"
        },
        {
          test: /\.css$/,
          use: [MiniCssExtractPlugin.loader, "css-loader"]
        }
      ]
    },
    plugins: [
      new MiniCssExtractPlugin({ filename: "styles.css" }),
      new webpack.optimize.ModuleConcatenationPlugin(),
      new webpack.NoEmitOnErrorsPlugin(),
      new HTMLWebpackPlugin({
        title: "__MSG_extension_name__"
      }),
      new webpack.DefinePlugin({
        "process.env.NODE_ENV": JSON.stringify(ENV)
      }),
      new CopyWebpackPlugin([
        {
          from: "../manifest.json",
          to: outdir
        },
        {
          from: "../_locales",
          to: outdir + "/_locales"
        },
        {
          from: "../assets",
          to: outdir + "/assets"
        }
      ])
    ],
    devtool: "source-map"
  }
];
