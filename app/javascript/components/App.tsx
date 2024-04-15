import React, { FC } from 'react'
import SideNavbar from './navbar/SideNavigation'
import TopNavbar from './navbar/TopNavbar'
import HomePage from './homepage/Index'

interface Props {
  // Prop types here 
}

const App: FC<Props> = ({ }: Props ): JSX.Element => {
  const pages = ['Home', 'Campus']
  // const pages = ['Home', 'Campus', 'Test', 'Clubs', 'Course', 'Library']
  
  return (<HomePage/>)
}

export default App
