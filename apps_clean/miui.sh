#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
Mipay
MiuiBugReport
Browser
Calendar
MiuiCamera
MiuiGallery
MiuiVideo
Music
QuickSearchBox
talkback
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/app/AiAsstVision
rm -rf $1/app/AnalyticsCore
rm -rf $1/app/AutoRegistration
rm -rf $1/app/BTProductionLineTool
rm -rf $1/app/BasicDreams
rm -rf $1/app/BluetoothMidiService
rm -rf $1/app/BookmarkProvider
rm -rf $1/app/Camera
rm -rf $1/app/facebook-appmanager
rm -rf $1/app/InMipay
rm -rf $1/app/MiuiCompass
rm -rf $1/app/MiuiScreenRecorder
rm -rf $1/app/CarrierDefaultApp
rm -rf $1/app/CatchLog
rm -rf $1/app/CertInstaller
rm -rf $1/app/Cit
rm -rf $1/app/CompanionDeviceManager
rm -rf $1/app/FidoAuthen
rm -rf $1/app/FidoClient
rm -rf $1/app/FusedLocationProvider
rm -rf $1/app/GFTest
rm -rf $1/app/GooglePrintRecommendationService
rm -rf $1/app/HybridAccessory
rm -rf $1/app/HybridPlatform
rm -rf $1/app/Joyose
rm -rf $1/app/KSICibaEngine
rm -rf $1/app/KeyChain
rm -rf $1/app/MIUIFrequentPhrase
rm -rf $1/app/MIUIMusic
rm -rf $1/app/MIUISuperMarket
rm -rf $1/app/MIUITouchAssistant
rm -rf $1/app/MIUIgreenguard
rm -rf $1/app/MIpay
rm -rf $1/app/MSA
rm -rf $1/app/MaintenanceMode
rm -rf $1/app/MiLink
rm -rf $1/app/MiLinkService2
rm -rf $1/app/MiPlayClient
rm -rf $1/app/Mipay
rm -rf $1/app/MiuiAudioMonitor
rm -rf $1/app/MiuiBugReport
rm -rf $1/app/MiuiContentCatcher
rm -rf $1/app/MiuiDaemon
rm -rf $1/app/MiuiPrintSpoolerBeta
rm -rf $1/app/MiuiVideoPlayer
rm -rf $1/app/ModemTestBox
rm -rf $1/app/Music
rm -rf $1/app/NextPay
rm -rf $1/app/Notes
rm -rf $1/app/PacProcessor
rm -rf $1/app/PaymentService
rm -rf $1/app/PlatformCaptivePortalLogin
rm -rf $1/app/PowerChecker
rm -rf $1/app/Protips
rm -rf $1/app/SecureElement
rm -rf $1/app/SecurityInputMethod
rm -rf $1/app/TSMClient
rm -rf $1/app/Traceur
rm -rf $1/app/TranslationService
rm -rf $1/app/UPTsmService
rm -rf $1/app/VoiceAssist
rm -rf $1/app/VsimCore
rm -rf $1/app/WMService
rm -rf $1/app/XMCloudEngine
rm -rf $1/app/XMSFKeeper
rm -rf $1/app/YouDaoEngine
rm -rf $1/app/com.miui.qr
rm -rf $1/app/com.xiaomi.macro
rm -rf $1/app/greenguard
rm -rf $1/app/mab
rm -rf $1/app/mi_connect_service
rm -rf $1/data-app/*
rm -rf $1/priv-app/Browser
rm -rf $1/priv-app/BuiltInPrintService
rm -rf $1/priv-app/CellBroadcastLegacyApp
rm -rf $1/priv-app/ContentExtension
rm -rf $1/priv-app/CleanMaster
rm -rf $1/priv-app/DMRegService
rm -rf $1/priv-app/DynamicSystemInstallationService
rm -rf $1/priv-app/facebook-installer
rm -rf $1/priv-app/facebook-services
rm -rf $1/priv-app/GameCenterGlobal
rm -rf $1/priv-app/MIService
rm -rf $1/priv-app/MIShare
rm -rf $1/priv-app/MIUIContentExtension
rm -rf $1/priv-app/MIUIMusic
rm -rf $1/priv-app/MIUIPersonalAssistant
rm -rf $1/priv-app/MIUIYellowPage
rm -rf $1/priv-app/ManagedProvisioning
rm -rf $1/priv-app/MiBrowserGlobal
rm -rf $1/priv-app/MiCalendarGlobal
rm -rf $1/priv-app/MiDrop
rm -rf $1/priv-app/MiGameCenterSDKService
rm -rf $1/priv-app/MiRcs
rm -rf $1/priv-app/Mirror
rm -rf $1/priv-app/MiuiCamera
rm -rf $1/priv-app/MiuiGallery
rm -rf $1/priv-app/MiuiHome
rm -rf $1/priv-app/MiuiScanner
rm -rf $1/priv-app/MiuiMusicGlobal
rm -rf $1/priv-app/MiuiVideo
rm -rf $1/priv-app/Music
rm -rf $1/priv-app/MusicFX
rm -rf $1/priv-app/ONS
rm -rf $1/priv-app/OriginalInstaller
rm -rf $1/priv-app/PersonalAssistant
rm -rf $1/priv-app/ProxyHandler
rm -rf $1/priv-app/SecurityCenter
rm -rf $1/priv-app/SharedStorageBackup
rm -rf $1/priv-app/StatementService
rm -rf $1/priv-app/SystemHelper
rm -rf $1/priv-app/Tag
rm -rf $1/priv-app/UserDictionaryProvider
rm -rf $1/priv-app/YellowPage
rm -rf $1/product/app/YouTube
rm -rf $1/product/app/Gmail2
rm -rf $1/product/app/Messages
rm -rf $1/product/app/PhotoTable
rm -rf $1/product/app/PowerOffAlarm
rm -rf $1/product/app/aiasst_service
rm -rf $1/product/app/talkback
rm -rf $1/product/data-app/*
rm -rf $1/product/priv-app/AndroidAutoStub
rm -rf $1/product/priv-app/ConfigUpdater
rm -rf $1/product/priv-app/GoogleDialer
rm -rf $1/product/priv-app/OobConfig
rm -rf $1/product/priv-app/Turbo
rm -rf $1/product/priv-app/Wellbeing
rm -rf $1/system_ext/app/ConfURIDialer
rm -rf $1/system_ext/app/DeviceInfo
rm -rf $1/system_ext/app/DynamicDDSService
rm -rf $1/system_ext/app/FM
rm -rf $1/system_ext/app/QColor
rm -rf $1/system_ext/app/QdcmFF
rm -rf $1/system_ext/app/QtiSystemService
rm -rf $1/system_ext/app/SimContact
rm -rf $1/system_ext/app/WigigTetheringPRO
rm -rf $1/system_ext/app/colorservice
rm -rf $1/system_ext/app/com.qualcomm.qti.services.systemhelper
rm -rf $1/system_ext/app/datastatusnotification
rm -rf $1/system_ext/app/embms
rm -rf $1/system_ext/app/remoteSimLockAuthentication
rm -rf $1/system_ext/app/remotesimlockservice
rm -rf $1/system_ext/app/uimlpaservice
rm -rf $1/system_ext/app/uimremoteclient
rm -rf $1/system_ext/app/uimremoteserver
rm -rf $1/system_ext/app/xdivert
rm -rf $1/system_ext/priv-app/EmergencyInfo
rm -rf $1/system_ext/priv-app/WfdService
rm -rf $1/system_ext/priv-app/dpmserviceapp
rm -rf $1/system_ext/priv-app/seccamservice
