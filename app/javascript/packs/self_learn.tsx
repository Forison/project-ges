import React, { StrictMode } from "react"
import { createRoot } from 'react-dom/client'
import { RouterProvider } from "react-router-dom"
import { router } from "../components/shared/Route"

document.addEventListener('DOMContentLoaded', () => {
  const rootElement = document.getElementById("root")
  const root = createRoot(rootElement)

  root.render(
    <StrictMode>
      <RouterProvider router={router} />
    </StrictMode>
  )
})
