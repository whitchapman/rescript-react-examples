@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  switch url.path {
    | list{"things", "all"} => <div> {React.string("View Everything")} </div>
    | list{"things", title} => <div> {React.string("View " ++ title ++ " ones")} </div>
    | list{"button"} => <Counter />
    | list{"hello"} => <Greeting />
    | list{"hidden"} => <Hidden />
    | list{} => <div> {React.string("Home page")}
                  <ul>
                    <li><a href="/hello">{React.string("Greeting")}</a></li>
                    <li><a href="/button">{React.string("Counter")}</a></li>
                    <li><a href="/things/all">{React.string("Everything")}</a></li>
                    <li><a href="/things/blue">{React.string("Blue")}</a></li>
                    <li><a href="/things/red">{React.string("Red")}</a></li>
                    <li><a href="/hidden">{React.string("Hide and Show")}</a></li>
                  </ul>
                </div>
    | _ => <div> {React.string("404")} </div>
  }
}
