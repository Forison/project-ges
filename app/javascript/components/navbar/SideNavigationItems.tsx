import React from 'react'
import {
  Box,
  Divider,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  Toolbar
} from '@mui/material'
import InboxIcon from '@mui/icons-material/NotificationsNoneOutlined'
import MailIcon from '@mui/icons-material/Mail'

export default function SideNavigationItems({ }): JSX.Element {

  return (
    <Box>
      <Toolbar />
      <List>
        {['Notification', 'Groups', 'Activities', 'Profile'].map((icon, index) => (
          <ListItem key={icon} disablePadding>
            <ListItemButton>
              <ListItemIcon>
              {index % 2 === 0 ? <InboxIcon /> : <MailIcon />}
              </ListItemIcon>
              <ListItemText primary={icon} />
            </ListItemButton>
          </ListItem>
        ))}
      </List>
      <Divider />
      <List>
        {['Schools', 'Teachers', 'Courses'].map((text, index) => (
          <ListItem key={text} disablePadding>
            <ListItemButton>
              <ListItemIcon>
                {index % 2 === 0 ? <InboxIcon /> : <MailIcon />}
              </ListItemIcon>
              <ListItemText primary={text} />
            </ListItemButton>
          </ListItem>
        ))}
      </List>
    </Box>
  )
}
