#import <Foundation/Foundation.h>

NSObject *MGCopyAnswer(NSString *query);

int main(){
	@autoreleasepool {
		NSArray *gestaltKeys = @[
			@"3GProximityCapability",
			@"3Gvenice",
			@"3d-imagery",
			@"3d-maps",
			@"64-bit",
			@"720p",
			@"ASTC",
			@"AWDID",
			@"AWDLCapability",
			@"ActivationProtocol",
			@"ActiveWirelessTechnology",
			@"AggregateDevicePhotoZoomFactor",
			@"AggregateDeviceVideoZoomFactor",
			@"AirDropCapability",
			@"AirplaneMode",
			@"AirplayMirroringCapability",
			@"Allow32BitApps",
			@"AllowOnlyATVCPSDKApps",
			@"AllowYouTube",
			@"AllowYouTubePlugin",
			@"AppCapacityTVOS",
			@"AppStore",
			@"AudioPlaybackCapability",
			@"AutoFocusCameraCapability",
			@"BacklightCapability",
			@"BasebandAPTimeSync",
			@"BasebandCertId",
			@"BasebandChipId",
			@"BasebandChipset",
			@"BasebandClass",
			@"BasebandFirmwareManifestData",
			@"BasebandFirmwareUpdateInfo",
			@"BasebandFirmwareVersion",
			@"BasebandKeyHashInformation",
			@"BasebandPostponementStatus",
			@"BasebandPostponementStatusBlob",
			@"BasebandSecurityInfoBlob",
			@"BasebandStatus",
			@"BasebandUniqueId",
			@"BlueLightReductionSupported",
			@"BoardId",
			@"BridgeBuild",
			@"BridgeRestoreVersion",
			@"BuddyLanguagesAnimationRequiresOptimization",
			@"BuildID",
			@"BuildVersion",
			@"CPUArchitecture",
			@"CPUSubType",
			@"CPUType",
			@"CameraFlashCapability",
			@"CameraFrontFlashCapability",
			@"CameraHDR2Capability",
			@"CameraLiveEffectsCapability",
			@"CameraMaxBurstLength",
			@"CarrierBundleInfoArray",
			@"CarrierInstallCapability",
			@"CellularTelephonyCapability",
			@"CertificateProductionStatus",
			@"CertificateSecurityMode",
			@"ChipID",
			@"CloudPhotoLibraryCapability",
			@"CoastlineGlowRenderingCapability",
			@"CompassType",
			@"ContinuityCapability",
			@"CoreRoutineCapability",
			@"DMin",
			@"DebugBoardRevision",
			@"DesenseBuild",
			@"DeviceBackGlassMaterial",
			@"DeviceBackingColor",
			@"DeviceBrand",
			@"DeviceClass",
			@"DeviceClassNumber",
			@"DeviceColor",
			@"DeviceColorMapPolicy",
			@"DeviceCornerRadius",
			@"DeviceCoverGlassColor",
			@"DeviceCoverGlassMaterial",
			@"DeviceCoverMaterial",
			@"DeviceEnclosureColor",
			@"DeviceEnclosureMaterial",
			@"DeviceEnclosureRGBColor",
			@"DeviceHasAggregateCamera",
			@"DeviceHousingColor",
			@"DeviceLaunchTimeLimitScale",
			@"DeviceName",
			@"DevicePrefers3DBuildingStrokes",
			@"DevicePrefersBuildingStrokes",
			@"DevicePrefersCheapTrafficShaders",
			@"DevicePrefersProceduralAntiAliasing",
			@"DevicePrefersTrafficAlpha",
			@"DeviceRGBColor",
			@"DeviceRequiresPetalOptimization",
			@"DeviceRequiresProximityAmeliorations",
			@"DeviceRequiresSoftwareBrightnessCalculations",
			@"DeviceSceneUpdateTimeLimitScale",
			@"DeviceSubBrand",
			@"DeviceSupports1080p",
			@"DeviceSupports3DImagery",
			@"DeviceSupports3DMaps",
			@"DeviceSupports4G",
			@"DeviceSupports4k",
			@"DeviceSupports720p",
			@"DeviceSupports9Pin",
			@"DeviceSupportsAOP",
			@"DeviceSupportsASTC",
			@"DeviceSupportsAdaptiveMapsUI",
			@"DeviceSupportsAlwaysListening",
			@"DeviceSupportsAlwaysOnCompass",
			@"DeviceSupportsApplePencil",
			@"DeviceSupportsAutoLowLightVideo",
			@"DeviceSupportsBatteryModuleAuthentication",
			@"DeviceSupportsBerkelium2",
			@"DeviceSupportsCCK",
			@"DeviceSupportsCameraCaptureOnTouchDown",
			@"DeviceSupportsCameraHaptics",
			@"DeviceSupportsCarIntegration",
			@"DeviceSupportsCinnamon",
			@"DeviceSupportsClosedLoopHaptics",
			@"DeviceSupportsCrudeProx",
			@"DeviceSupportsDClr",
			@"DeviceSupportsDoNotDisturbWhileDriving",
			@"DeviceSupportsELabel",
			@"DeviceSupportsEnhancedAC3",
			@"DeviceSupportsFloorCounting",
			@"DeviceSupportsHaptics",
			@"DeviceSupportsHeartHealthAlerts",
			@"DeviceSupportsHeartRateVariability",
			@"DeviceSupportsHiResBuildings",
			@"DeviceSupportsLineIn",
			@"DeviceSupportsLiquidDetection_CorrosionMitigation",
			@"DeviceSupportsLivePhotoAuto",
			@"DeviceSupportsMapsBlurredUI",
			@"DeviceSupportsNavigation",
			@"DeviceSupportsNewton",
			@"DeviceSupportsPeriodicALSUpdates",
			@"DeviceSupportsPortraitLightEffectFilters",
			@"DeviceSupportsRGB10",
			@"DeviceSupportsRaiseToSpeak",
			@"DeviceSupportsSiDP",
			@"DeviceSupportsSimplisticRoadMesh",
			@"DeviceSupportsSingleCameraPortrait",
			@"DeviceSupportsSiriSpeaks",
			@"DeviceSupportsStereoAudioRecording",
			@"DeviceSupportsStudioLightPortraitPreview",
			@"DeviceSupportsSwimmingWorkouts",
			@"DeviceSupportsTapToWake",
			@"DeviceSupportsTethering",
			@"DeviceSupportsToneMapping",
			@"DeviceSupportsUSBTypeC",
			@"DeviceSupportsWebkit",
			@"DeviceSupportsYCbCr10",
			@"DeviceVariant",
			@"DeviceVariantGuess",
			@"DisplayMirroringCapability",
			@"EffectiveProductionStatus",
			@"EffectiveProductionStatusAp",
			@"EffectiveProductionStatusSEP",
			@"EffectiveSecurityMode",
			@"EffectiveSecurityModeAp",
			@"EffectiveSecurityModeSEP",
			@"ExternalChargeCapability",
			@"ExternalPowerSourceConnected",
			@"FDRSealingStatus",
			@"FMFAllowed",
			@"FaceTimeBackCameraTemporalNoiseReductionMode",
			@"FaceTimeBitRate2G",
			@"FaceTimeBitRate3G",
			@"FaceTimeBitRateLTE",
			@"FaceTimeBitRateWiFi",
			@"FaceTimeCameraRequiresFastSwitchOptions",
			@"FaceTimeCameraSupportsHardwareFaceDetection",
			@"FaceTimeFrontCameraTemporalNoiseReductionMode",
			@"FaceTimePhotosOptIn",
			@"FirmwarePreflightInfo",
			@"FirmwareVersion",
			@"FirstPartyLaunchTimeLimitScale",
			@"ForwardCameraCapability",
			@"FrontCameraOffsetFromDisplayCenter",
			@"FrontFacingCameraAutoHDRCapability",
			@"FrontFacingCameraBurstCapability",
			@"FrontFacingCameraHDRCapability",
			@"FrontFacingCameraHDROnCapability",
			@"FrontFacingCameraHFRCapability",
			@"FrontFacingCameraMaxVideoZoomFactor",
			@"FrontFacingCameraStillDurationForBurst",
			@"FrontFacingCameraVideoCapture1080pMaxFPS",
			@"FrontFacingCameraVideoCapture4kMaxFPS",
			@"FrontFacingCameraVideoCapture720pMaxFPS",
			@"GPSCapability",
			@"GSDeviceName",
			@"H264EncoderCapability",
			@"HEVCDecoder10bitSupported",
			@"HEVCDecoder12bitSupported",
			@"HEVCDecoder8bitSupported",
			@"HEVCEncodingCapability",
			@"HWModelStr",
			@"HallEffectSensorCapability",
			@"HardwarePlatform",
			@"HasAppleNeuralEngine",
			@"HasBaseband",
			@"HasBattery",
			@"HasDaliMode",
			@"HasExtendedColorDisplay",
			@"HasIcefall",
			@"HasInternalSettingsBundle",
			@"HasMesa",
			@"HasPKA",
			@"HasSEP",
			@"HasSpringBoard",
			@"HasThinBezel",
			@"HearingAidAudioEqualizationCapability",
			@"HearingAidLowEnergyAudioCapability",
			@"HearingAidPowerReductionCapability",
			@"HighestSupportedVideoMode",
			@"HomeButtonType",
			@"IDAMCapability",
			@"IOSurfaceFormatDictionary",
			@"IcefallInRestrictedMode",
			@"IcefallInfo",
			@"Image4CryptoHashMethod",
			@"Image4Supported",
			@"InDiagnosticsMode",
			@"InternalBuild",
			@"IsEmulatedDevice",
			@"IsLargeFormatPhone",
			@"IsPwrOpposedVol",
			@"IsSimulator",
			@"IsUIBuild",
			@"LaunchTimeLimitScaleSupported",
			@"LisaCapability",
			@"LocationRemindersCapability",
			@"LowPowerWalletMode",
			@"LynxPublicKey",
			@"MainDisplayRotation",
			@"MainScreenCanvasSizes",
			@"MainScreenStaticInfo",
			@"MarketingProductName",
			@"MarketingVersion",
			@"MaxH264PlaybackLevel",
			@"MaximumScreenScale",
			@"MedusaFloatingLiveAppCapability",
			@"MedusaOverlayAppCapability",
			@"MedusaPIPCapability",
			@"MedusaPinnedAppCapability",
			@"MicrophoneCount",
			@"MinimumSupportediTunesVersion",
			@"MixAndMatchPrevention",
			@"MobileDeviceMinimumVersion",
			@"ModelNumber",
			@"MonarchLowEndHardware",
			@"MusicStore",
			@"N78aHack",
			@"NFCRadioCalibrationDataPresent",
			@"NavajoFusingState",
			@"NikeIpodCapability",
			@"OLEDDisplay",
			@"OfflineDictationCapability",
			@"OpenGLESVersion",
			@"PTPLargeFilesCapability",
			@"PanoramaCameraCapability",
			@"PartitionType",
			@"PearlIDCapability",
			@"PeekUICapability",
			@"PeekUIWidth",
			@"PersonalHotspotCapability",
			@"PhoneNumber",
			@"PhosphorusCapability",
			@"PhotoCapability",
			@"PhotoSharingCapability",
			@"PhotosPostEffectsCapability",
			@"PipelinedStillImageProcessingCapability",
			@"PlatinumCapability",
			@"ProductHash",
			@"ProductName",
			@"ProductType",
			@"ProductVersion",
			@"RF-exposure-separation-distance",
			@"RFExposureSeparationDistance",
			@"RearCameraCapability",
			@"RearCameraOffsetFromDisplayCenter",
			@"RearFacingCamera60fpsVideoCaptureCapability",
			@"RearFacingCameraAutoHDRCapability",
			@"RearFacingCameraBurstCapability",
			@"RearFacingCameraHDRCapability",
			@"RearFacingCameraHDROnCapability",
			@"RearFacingCameraHFRCapability",
			@"RearFacingCameraHFRVideoCapture1080pMaxFPS",
			@"RearFacingCameraHFRVideoCapture720pMaxFPS",
			@"RearFacingCameraMaxVideoZoomFactor",
			@"RearFacingCameraStillDurationForBurst",
			@"RearFacingCameraVideoCapture1080pMaxFPS",
			@"RearFacingCameraVideoCapture4kMaxFPS",
			@"RearFacingCameraVideoCapture720pMaxFPS",
			@"RearFacingCameraVideoCaptureFPS",
			@"RearFacingTelephotoCameraCapability",
			@"RegionCode",
			@"RegionInfo",
			@"RegionalBehaviorChinaBrick",
			@"RegionalBehaviorEUVolumeLimit",
			@"RegionalBehaviorGB18030",
			@"RegionalBehaviorGoogleMail",
			@"RegionalBehaviorNTSC",
			@"RegionalBehaviorNoPasscodeLocationTiles",
			@"RegionalBehaviorNoVOIP",
			@"RegionalBehaviorNoWiFi",
			@"RegionalBehaviorShutterClick",
			@"RegionalBehaviorValid",
			@"RegionalBehaviorVolumeLimit",
			@"RegulatoryModelNumber",
			@"ReleaseType",
			@"RenderWideGamutImagesAtDisplayTime",
			@"RendersLetterPressSlowly",
			@"RestoreOSBuild",
			@"RestrictedCountryCodes",
			@"RingerSwitchCapability",
			@"RotateToWakeStatus",
			@"SBAllowSensitiveUI",
			@"SBCanForceDebuggingInfo",
			@"SDIOManufacturerTuple",
			@"SDIOProductInfo",
			@"SEInfo",
			@"SIMStatus",
			@"SIMStatus2",
			@"SIMTrayStatus",
			@"SIMTrayStatus2",
			@"SavageInfo",
			@"SavageUID",
			@"ScreenRecorderCapability",
			@"SecureElement",
			@"SecureElementID",
			@"ShouldHactivate",
			@"SiKACapability",
			@"SigningFuse",
			@"SiliconBringupBoard",
			@"SiriGestureCapability",
			@"SiriOfflineCapability",
			@"Skey",
			@"SoftwareBehavior",
			@"SoftwareBundleVersion",
			@"SoftwareDimmingAlpha",
			@"SphereCapability",
			@"StarkCapability",
			@"StockholmJcopInfo",
			@"StrictWakeKeyboardCases",
			@"SupportedDeviceFamilies",
			@"SupportedKeyboards",
			@"SupportsBurninMitigation",
			@"SupportsEDUMU",
			@"SupportsForceTouch",
			@"SupportsIrisCapture",
			@"SupportsLowPowerMode",
			@"SupportsPerseus",
			@"SupportsRotateToWake",
			@"SupportsSOS",
			@"SupportsSSHBButtonType",
			@"SupportsTouchRemote",
			@"TimeSyncCapability",
			@"TouchDelivery120Hz",
			@"UIBackgroundQuality",
			@"UIParallaxCapability",
			@"UIProceduralWallpaperCapability",
			@"UIReachability",
			@"UserIntentPhysicalButtonCGRect",
			@"UserIntentPhysicalButtonCGRectString",
			@"UserIntentPhysicalButtonNormalizedCGRect",
			@"VibratorCapability",
			@"VideoStillsCapability",
			@"WAGraphicQuality",
			@"WLANBkgScanCache",
			@"WSKU",
			@"WiFiCallingCapability",
			@"WifiAntennaSKUVersion",
			@"WifiCallingSecondaryDeviceCapability",
			@"WifiChipset",
			@"WifiFirmwareVersion",
			@"WifiVendor",
			@"WirelessChargingCapability",
			@"YonkersUID",
			@"accelerometer",
			@"accessibility",
			@"additional-text-tones",
			@"aggregate-cam-photo-zoom",
			@"aggregate-cam-video-zoom",
			@"airDropRestriction",
			@"airplay-mirroring",
			@"airplay-no-mirroring",
			@"all-features",
			@"allow-32bit-apps",
			@"ambient-light-sensor",
			@"ane",
			@"any-telephony",
			@"apn",
			@"apple-internal-install",
			@"applicationInstallation",
			@"arkit",
			@"arm64",
			@"armv6",
			@"armv7",
			@"armv7s",
			@"assistant",
			@"auto-focus",
			@"auto-focus-camera",
			@"baseband-chipset",
			@"bitrate-2g",
			@"bitrate-3g",
			@"bitrate-lte",
			@"bitrate-wifi",
			@"bluetooth",
			@"bluetooth-le",
			@"builtin-mics",
			@"c2k-device",
			@"call-forwarding",
			@"call-waiting",
			@"caller-id",
			@"camera-flash",
			@"camera-front",
			@"camera-front-flash",
			@"camera-rear",
			@"cameraRestriction",
			@"car-integration",
			@"cell-broadcast",
			@"cellular-data",
			@"certificate-production-status",
			@"certificate-security-mode",
			@"class",
			@"closed-loop",
			@"contains-cellular-radio",
			@"crypto-hash-method",
			@"dali-mode",
			@"data-plan",
			@"debug-board-revision",
			@"delay-sleep-for-headset-click",
			@"device-color-policy",
			@"device-colors",
			@"device-name",
			@"device-name-localized",
			@"dictation",
			@"display-mirroring",
			@"display-rotation",
			@"displayport",
			@"does-not-support-gamekit",
			@"effective-production-status",
			@"effective-production-status-ap",
			@"effective-production-status-sep",
			@"effective-security-mode",
			@"effective-security-mode-ap",
			@"effective-security-mode-sep",
			@"enc-top-type",
			@"encode-aac",
			@"encrypted-data-partition",
			@"enforce-googlemail",
			@"enforce-shutter-click",
			@"explicitContentRestriction",
			@"face-detection-support",
			@"fast-switch-options",
			@"fcc-logos-via-software",
			@"fcm-type",
			@"firmware-version",
			@"flash",
			@"front-auto-hdr",
			@"front-burst",
			@"front-burst-image-duration",
			@"front-facing-camera",
			@"front-flash-capability",
			@"front-hdr",
			@"front-hdr-on",
			@"front-max-video-fps-1080p",
			@"front-max-video-fps-4k",
			@"front-max-video-fps-720p",
			@"front-max-video-zoom",
			@"front-slowmo",
			@"full-6",
			@"function-button_halleffect",
			@"function-button_ringerab",
			@"gamekit",
			@"gas-gauge-battery",
			@"gps",
			@"gps-capable",
			@"green-tea",
			@"gyroscope",
			@"h264-encoder",
			@"hall-effect-sensor",
			@"haptics",
			@"hardware-keyboard",
			@"has-sphere",
			@"hd-video-capture",
			@"hdr-image-capture",
			@"healthkit",
			@"hearingaid-audio-equalization",
			@"hearingaid-low-energy-audio",
			@"hearingaid-power-reduction",
			@"hiccough-interval",
			@"hide-non-default-apps",
			@"hidpi",
			@"home-button-type",
			@"homescreen-wallpaper",
			@"hw-encode-snapshots",
			@"hw-snapshots-need-purplegfx",
			@"iAP2Capability",
			@"iTunesFamilyID",
			@"iap2-protocol-supported",
			@"image4-supported",
			@"international-settings",
			@"io-surface-backed-images",
			@"ipad",
			@"kConferenceCallType",
			@"kSimultaneousCallAndDataCurrentlySupported",
			@"kSimultaneousCallAndDataSupported",
			@"large-format-phone",
			@"live-effects",
			@"live-photo-capture",
			@"load-thumbnails-while-scrolling",
			@"location-reminders",
			@"location-services",
			@"low-power-wallet-mode",
			@"lte-device",
			@"magnetometer",
			@"main-screen-class",
			@"main-screen-height",
			@"main-screen-orientation",
			@"main-screen-pitch",
			@"main-screen-scale",
			@"main-screen-width",
			@"marketing-name",
			@"mesa",
			@"metal",
			@"microphone",
			@"mix-n-match-prevention-status",
			@"mms",
			@"modelIdentifier",
			@"multi-touch",
			@"multitasking",
			@"multitasking-gestures",
			@"n78a-mode",
			@"name",
			@"navigation",
			@"nfc",
			@"nfcWithRadio",
			@"nike-ipod",
			@"nike-support",
			@"no-coreroutine",
			@"no-hi-res-buildings",
			@"no-simplistic-road-mesh",
			@"not-green-tea",
			@"offline-dictation",
			@"opal",
			@"opengles-1",
			@"opengles-2",
			@"opengles-3",
			@"opposed-power-vol-buttons",
			@"ota-activation",
			@"panorama",
			@"peek-ui-width",
			@"peer-peer",
			@"personal-hotspot",
			@"photo-adjustments",
			@"photo-stream",
			@"piezo-clicker",
			@"pipelined-stillimage-capability",
			@"platinum",
			@"post-effects",
			@"pressure",
			@"prox-sensor",
			@"proximity-sensor",
			@"ptp-large-files",
			@"public-key-accelerator",
			@"rear-auto-hdr",
			@"rear-burst",
			@"rear-burst-image-duration",
			@"rear-cam-telephoto-capability",
			@"rear-facing-camera",
			@"rear-hdr",
			@"rear-hdr-on",
			@"rear-max-slomo-video-fps-1080p",
			@"rear-max-slomo-video-fps-720p",
			@"rear-max-video-fps-1080p",
			@"rear-max-video-fps-4k",
			@"rear-max-video-fps-720p",
			@"rear-max-video-frame_rate",
			@"rear-max-video-zoom",
			@"rear-slowmo",
			@"regulatory-model-number",
			@"ringer-switch",
			@"role",
			@"sandman-support",
			@"screen-dimensions",
			@"sensitive-ui",
			@"shoebox",
			@"sika-support",
			@"sim",
			@"sim-phonebook",
			@"siri-gesture",
			@"slow-letterpress-rendering",
			@"sms",
			@"software-bundle-version",
			@"software-dimming-alpha",
			@"stand-alone-contacts",
			@"still-camera",
			@"stockholm",
			@"supports-always-listening",
			@"telephony",
			@"telephony-maximum-generation",
			@"thin-bezel",
			@"tnr-mode-back",
			@"tnr-mode-front",
			@"touch-id",
			@"tv-out-crossfade",
			@"tv-out-settings",
			@"ui-background-quality",
			@"ui-no-parallax",
			@"ui-no-procedural-wallpaper",
			@"ui-pip",
			@"ui-reachability",
			@"ui-traffic-cheap-shaders",
			@"ui-weather-quality",
			@"umts-device",
			@"unified-ipod",
			@"venice",
			@"video-camera",
			@"video-cap",
			@"video-stills",
			@"voice-control",
			@"voip",
			@"volume-buttons",
			@"wapi",
			@"wi-fi",
			@"wifi",
			@"wifi-antenna-sku-info",
			@"wifi-chipset",
			@"wifi-module-sn",
			@"wlan",
			@"youtube",
			@"youtubePlugin",
		];
		NSMutableDictionary *answers = [NSMutableDictionary dictionary];
		for (NSString *query in gestaltKeys){
			NSObject *answer = MGCopyAnswer(query);
			if (answer){
				[answers setObject:answer forKey:query];
			}
		}
		printf("%s\n", [[answers description] UTF8String]);
	}
}