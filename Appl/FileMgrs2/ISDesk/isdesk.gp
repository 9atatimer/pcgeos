##############################################################################
#
#	Copyright (c) GeoWorks 1989 -- All Rights Reserved
#
# PROJECT:	PC GEOS
# MODULE:	NewDesk
# FILE:		newdesk.gp
#
# AUTHOR:	Tony, 10/89
#
#
# Parameters file for: desktop.geo
#
#	$Id: newdesk.gp,v 1.5 98/06/03 15:35:47 joon Exp $
#
##############################################################################
#
# Permanent name
#
name isdesk.app
#
# Long filename
#
longname "ISDesk"
#
# token information
#
tokenchars "nDSK"
tokenid 0
#
# Specify geode type
#
type	appl, process, single
#
# Specify class name for process
#
class	DesktopClass
#
# Specify application object
#
appobj	Desktop
#
# Import library routine definitions
#
library	geos
library	ui
#library net
library shell
library wav

#
# Define resources other than standard discardable code
#
resource FixedCode fixed code read-only
resource FileMgrsClassStructures        fixed read-only shared
resource InitCode preload read-only code shared discard-only
resource DragIconResource data read-only
resource GenAppInterface ui-object
resource Interface ui-object
resource PrimaryInterface ui-object
resource FileOperationUI ui-object
resource MenuMoveUI ui-object
resource MenuRecoverUI ui-object
resource MenuCopyUI ui-object

ifdef CREATE_LINKS
resource MenuCreateLinkUI ui-object
endif

resource MiscUI ui-object
resource ActiveUI ui-object
resource ProgressUI ui-object
resource ToolUI ui-object
resource DiskMenuResource ui-object
resource DummyResource object

#
# Moniker List - defined resources
#
resource MonikerResource shared lmem read-only
resource NDMonikerResource shared lmem read-only
#
# Moniker - defined resources
#
resource AppSCMonikerResource shared lmem read-only
resource AppSMMonikerResource shared lmem read-only
resource AppSCGAMonikerResource shared lmem read-only

ifdef GPC
resource InitSCMonikerResourceOne shared lmem read-only
resource InitSCMonikerResourceTwo shared lmem read-only
resource InitSCMonikerResourceThree shared lmem read-only
resource InitSCMonikerResourceFour shared lmem read-only
resource InitSCMonikerResourceFive shared lmem read-only
resource InitDOSSCMonikerResource shared lmem read-only
resource InitDOSSCMonikerResource2 shared lmem read-only
resource InitDOSSCMonikerResource3 shared lmem read-only
resource InitDOSTCMonikerResource shared lmem read-only
resource InitDOSTCMonikerResource2 shared lmem read-only
endif
resource NDStandardSCMonikerResource shared lmem read-only
resource NDStandardSMMonikerResource shared lmem read-only
resource NDStandardSCGAMonikerResource shared lmem read-only

resource AppDrivesSCMonikerResource shared lmem read-only
resource AppDrivesSMMonikerResource shared lmem read-only
resource AppDrivesSCGAMonikerResource shared lmem read-only
resource DeskStringsCommon lmem shared read-only
resource DeskStringsRare lmem shared read-only
resource DeskTriggerMonikers lmem shared read-only

# NewDesk specific resource

resource NDFolderObjectTemplate object read-only
resource NDFolderDummyResource object
resource NDFolderWindowTemplate ui-object read-only

resource NDSystemFolderObjectTemplate object read-only
resource NDSystemFolderDummyResource object

resource NDDesktopFolderObjectTemplate object read-only
resource NDDesktopFolderDummyResource object
resource NDDesktopFolderWindowTemplate ui-object read-only

resource NDPrinterOptionsUI ui-object

resource NDWastebasketObjectTemplate object
resource NDWastebasketDummyResource object
resource NDWastebasketWindowTemplate ui-object

resource NDDriveObjectTemplate object
resource NDDriveDummyResource object
resource NDDriveWindowTemplate ui-object

resource GlobalMenuResource ui-object
resource GlobalSortViewMenuResource ui-object

ifdef GPC
#resource FileOpDialogStrings data lmem
endif

# CommonDesktop - defined classes:

export DeskVisClass
export ShellObjectClass
export DesktopViewClass
export FolderClass
export DeskApplicationClass
export DeskToolClass
export DirToolClass
export DriveToolClass
export DriveLetterClass
export DriveListClass
export FileOperationBoxClass
export FileOpAppActiveBoxClass
export FileOpFileListClass
export CancelTriggerClass
export PathnameStorageClass
export ToolAreaClass
export ToolManagerClass

# NewDesk specific classes

export NDPrimaryClass
export NDDesktopViewClass
export NDFolderClass
export NDDesktopClass
export NDPrinterClass
export NDDriveClass
export NDWastebasketClass
export EMCControlPanelClass
export NDPopupMenuClass
export NDDesktopPrimaryClass
export NDSortViewPopupMenuClass

# for folder dir tools
ifdef LEFTCLICKDRAGDROP
export NoQTTextClass
endif
