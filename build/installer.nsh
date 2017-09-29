!macro customHeader
  !include "WordFunc.nsh"
!macroend

!macro customInit

  ClearErrors
  ReadRegStr $0 HKLM "${UNINSTALL_REGISTRY_KEY}" "DisplayVersion"
  IfErrors Exit 0

  ${VersionCompare} "$0" "${VERSION}" $1

  ${if} $1 == 1
    MessageBox MB_OK "The latest version of application is already installed"
    Abort "Abort"
  ${endif}

  Exit:

!macroend
