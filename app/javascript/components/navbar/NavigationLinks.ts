import HomeOutlinedIcon from '@mui/icons-material/HomeOutlined'
import NotificationsOutlinedIcon from '@mui/icons-material/NotificationsOutlined'
import MailOutlinedIcon from '@mui/icons-material/MailOutlined'
import Diversity1OutlinedIcon from '@mui/icons-material/Diversity1Outlined'
import AccountBoxOutlinedIcon from '@mui/icons-material/AccountBoxOutlined'
import CastForEducationOutlinedIcon from '@mui/icons-material/CastForEducationOutlined'
import SchoolOutlinedIcon from '@mui/icons-material/SchoolOutlined'
import AssignmentOutlinedIcon from '@mui/icons-material/AssignmentOutlined'
import LocalMallOutlinedIcon from '@mui/icons-material/LocalMallOutlined'
import SettingsOutlinedIcon from '@mui/icons-material/SettingsOutlined'
import EqualizerOutlinedIcon from '@mui/icons-material/EqualizerOutlined'

const navigation = [
  {
    title: 'Dashboard',
    icon: HomeOutlinedIcon,
    path: '/'
  },
  {
    title: 'Notification',
    icon: NotificationsOutlinedIcon,
    path: '/nofication'
  },
  {
    title: 'Inbox',
    icon: MailOutlinedIcon,
    path: '/inbox'
  },
  {
    title: 'Groups',
    icon: Diversity1OutlinedIcon,
    path: '/groups'
  },
  {
    title: 'Profile',
    icon: AccountBoxOutlinedIcon,
    path: '/profile',
  },
  {
    title: 'School',
    path: '/school',
    icon: SchoolOutlinedIcon
  },
  {
    title: 'Teachers',
    icon: CastForEducationOutlinedIcon,
    path: '/teachers'
  },
  {
    title: 'Activities',
    icon: AssignmentOutlinedIcon,
    path: '/activities',
  },
  {
    title: 'Courses',
    icon: LocalMallOutlinedIcon,
    path: '/tables'
  },
  {
    icon:   EqualizerOutlinedIcon,
    title: 'Form Layouts',
    path: '/form-layouts'
  },
  {
    icon: SettingsOutlinedIcon,
    title: 'Settings',
    path: '/settings'
  }
]

export default navigation