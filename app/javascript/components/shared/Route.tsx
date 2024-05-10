import React from 'react'
import { createBrowserRouter } from 'react-router-dom'
import SignUp from '../authentication/SignUp'
import SignIn from '../authentication/SignIn'
import ForgotPassword from '../authentication/ForgotPassword'
import ResetPassword from '../authentication/ResetPassword'

export const router = createBrowserRouter([
  {
    path: '/',
    element: <SignIn />,
  },
  {
    path: '/register',
    element: <SignUp />,
  },
  {
    path: '/login',
    element: <SignIn />,
  },
  {
    path: '/forgot_password',
    element: <ForgotPassword />,
  },
  {
    path: '/reset_password',
    element: <ResetPassword />
  }
])