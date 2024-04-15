import * as React from 'react'
import {
  Grid,
  Box,
  Typography,
  Tab,
  Tabs,
  CardMedia,
 } from '@mui/material'


interface TabPanelProps {
  children?: React.ReactNode
  index: number
  value: number
}

function TabPanel(props: TabPanelProps) {
  const { children, value, index, ...other } = props

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          <Typography>{children}</Typography>
        </Box>
      )}
    </div>
  )
}


export default function ProfileBottom(): JSX.Element {
  const [value, setValue] = React.useState(0)


  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    event.preventDefault()
    setValue(newValue)
  }

  return (
    <Box sx={{ width: '100%' }}>
      <Box>
        <Tabs value={value} onChange={handleChange}>
          <Tab label='Introductory Video'/>
          <Tab label='Answers' />
        </Tabs>
      </Box>
      <TabPanel value={value} index={0}>
      <CardMedia
        component='video'
        // image={data?.video?.url}
        title='Introductory video'
        controls
        autoPlay
      />
      </TabPanel>
      <TabPanel value={value} index={1}>
        <Grid container component={'div'}>
        
        </Grid>
      </TabPanel>
    </Box>
  )
}