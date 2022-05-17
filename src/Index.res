exception NoRoot

//temporary bindings for React 18.1 till @rescript/react is updated
module Root = {
  type t
  @send external render: (t, React.element) => unit = "render"
}

@module("react-dom/client")
external createRoot: Dom.element => Root.t = "createRoot"

switch ReactDOM.querySelector("#root_react_element") {
| Some(container) => createRoot(container)->Root.render(<Demo />)
| None => raise(NoRoot)
}
