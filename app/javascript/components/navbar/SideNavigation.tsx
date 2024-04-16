import React from 'react'
import {
  Box,
  Divider,
  Drawer,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  ThemeProvider,
  Toolbar,
  createTheme,
} from '@mui/material'
import InboxIcon from '@mui/icons-material/NotificationsNoneOutlined'
import MailIcon from '@mui/icons-material/Mail'
import SideNavigationItems from './SideNavigationItems'

const drawerWidth = 240
const darkTheme = createTheme({
  palette: {
    mode: 'dark',
  },
})


interface Props{
  mobileOpen: boolean
  handleDrawerTransitionEnd: () => void
  handleDrawerClose: () => void
}

export default function SideNavigation({ 
  mobileOpen,
  handleDrawerClose,
  handleDrawerTransitionEnd,
}: Props): JSX.Element {

  const drawer = (
    <Box>
      <Toolbar />
      <List>
        {['Notification', 'Groups', 'Activities', 'Profile'].map((icon) => (
          <ListItem key={icon} disablePadding>
            <ListItemButton>
              <ListItemIcon>
              <InboxIcon /> 
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
  return (
    <ThemeProvider theme={darkTheme}>
    <Box
        component="nav"
        sx={{ 
          width: { sm: drawerWidth }, flexShrink: { sm: 0 },
          backgroundColor: "#000"
        }}
      >
        {/* The implementation can be swapped with js to avoid SEO duplication of links. */}
        <Drawer
          variant="temporary"
          open={mobileOpen}
          onTransitionEnd={handleDrawerTransitionEnd}
          onClose={handleDrawerClose}
          ModalProps={{
            keepMounted: true, // Better open performance on mobile.
          }}
          sx={{
            display: { xs: 'block', sm: 'none' },
            '& .MuiDrawer-paper': { boxSizing: 'border-box', width: drawerWidth },
          }}
        >
          <SideNavigationItems />
        </Drawer>
        <Drawer
          variant="permanent"
          sx={{
            display: { xs: 'none', sm: 'block' },
            '& .MuiDrawer-paper': { boxSizing: 'border-box', width: drawerWidth },
          }}
          open
        >
          {drawer}
        </Drawer>
      </Box>
      </ThemeProvider>
  )
}
