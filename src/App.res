@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  switch url.path {
    | list{"recipes", "all"} => <div> {React.string("View All Recipes")} </div>
    | list{"recipes", title} => <div> {React.string("View Recipe " ++ title)} </div>
    | list{"button"} => <Counter />
    | list{"hello"} => <Greeting />
    | list{} => <div> {React.string("Home page")}
                  <ul>
                    <li><a href="/hello">{React.string("Greeting")}</a></li>
                    <li><a href="/button">{React.string("Counter")}</a></li>
                    <li><a href="/recipes/all">{React.string("All Recipes")}</a></li>
                    <li><a href="/recipes/chicken">{React.string("Chicken Recipe")}</a></li>
                    <li><a href="/recipes/beef">{React.string("Beef Recipe")}</a></li>
                  </ul>
                </div>
    | _ => <div> {React.string("404")} </div>
  }
}
