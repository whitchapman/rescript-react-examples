@react.component
let make = () => {
  let (show1, setShow1) = React.useState(() => false);
  let (show2, setShow2) = React.useState(() => false);
  let (show3, setShow3) = React.useState(() => false);

  let f = b => {
    if b {
      "true"
    } else {
      "false"
    }
  }

  //setShow1(_ => false);

  React.useEffect3(() => {
    Js.log("show1=" ++ f(show1) ++ " show2=" ++ f(show2) ++ " show3=" ++ f(show3))
    None
  }, (show1, show2, show3))

  let onClick1 = (_evt) => {
    setShow1(prev => !prev)
    setShow2(_prev => false)
    setShow3(_prev => false)
  };

  let onClick2 = (_evt) => {
    setShow2(prev => !prev)
    setShow3(_prev => false)
  };

  let onClick3 = (_evt) => {
    setShow3(prev => !prev)
  };

  <div>
    <p>{React.string("Click the Buttons to change: show1=" ++ f(show1) ++ " show2=" ++ f(show2) ++ " show3=" ++ f(show3))}</p>
    <p><button onClick=onClick1> {React.string("0) Click me")} </button></p>
    { if show1 {
        <p><button onClick=onClick2> {React.string("1) Click me")} </button></p>
      } else {
        React.null
      }}
    { if show2 {
        <p><button onClick=onClick3> {React.string("2) Click me")} </button></p>
      } else {
        React.null
      }}
    { if show3 {
        <p>{React.string("3) You did it!")}</p>
      } else {
        React.null
      }}
  </div>
}
