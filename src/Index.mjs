// Generated by ReScript, PLEASE EDIT WITH CARE

import * as App from "./App.mjs";
import * as React from "react";
import * as Caml_exceptions from "../node_modules/rescript/lib/es6/caml_exceptions.js";
import * as Client from "react-dom/client";

var NoRoot = /* @__PURE__ */Caml_exceptions.create("Index.NoRoot");

var Root = {};

var container = document.querySelector("#root_react_element");

if (container == null) {
  throw {
        RE_EXN_ID: NoRoot,
        Error: new Error()
      };
}

Client.createRoot(container).render(React.createElement(App.make, {}));

export {
  NoRoot ,
  Root ,
}
/* container Not a pure module */
