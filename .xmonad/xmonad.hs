import XMonad
import XMonad.Config.Xfce
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps

main = xmonad xfceConfig
       { terminal = "alacritty"
       , modMask = mod4Mask
       , normalBorderColor = myNormalBorderColor
       , focusedBorderColor = myFocusedBorderColor
       , borderWidth  = myBorderWidth
       , workspaces = myWorkspaces
       --, layoutHook = spacingRaw True (Border 0 40 10 10) True (Border 10 10 10 10) True $ layoutHook def
       --, layoutHook = gaps [(U,40), (R,23)] $ Tall 1 (3/100) (1/2) ||| Full  -- leave gaps at the top and right
       }

myNormalBorderColor   = "#000000"
myFocusedBorderColor  = "#242424"
myBorderWidth =  2

myWorkspaces = [ "Web", "Code", "Projects", "Inbox", "Other" ]

