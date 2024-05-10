import * as React from 'react'
import { Link, Typography } from '@mui/material'

const Copyright = (props): JSX.Element => {
  return (
    <Typography
      variant="body2"
      color="text.secondary"
      align="center"
      sx={{
        flexDirection: "column",
        justifyContent: "flex-end"
      }}
      {...props}>
      {'Copyright © '}
      <Link color="inherit" href="#">
        Virtual Gh
      </Link>{' '}
      {new Date().getFullYear()}
      {'.'}
    </Typography>
  )
}
export default Copyright