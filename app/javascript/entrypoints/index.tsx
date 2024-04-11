import React from "react"
import ReactDOM from "react-dom/client"

const App = () => <h1>Hello from React!</h1>

const root = ReactDOM.createRoot(
  document.getElementById("root") as HTMLElement
)

root.render(
  <App />
)

// tttc	Function Component base with Typescript and default export
// tttsb	Function Component with storybook scaffolding
// ttth	Basic React Hook in TypeScript with useState
// ttthe	Basic React Hook in TypeScript with useState and useEffect