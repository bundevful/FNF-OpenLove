return {
	DEBUG_MODE = true,

	title = "Friday Night Funkin' OpenLöve",
	file = "FNF-OpenLove",
	icon = "art/icon.png",
	version = "1.0.0",
	package = "com.clover.fnfopenlove",
	width = 1280,
	height = 720,
	FPS = 60,
	company = "Clover",

	flags = {
		checkForUpdates = false,

		loxelInitialAutoPause = true,
		loxelInitialParallelUpdate = true,
		loxelInitialAsyncInput = false,

		loxelForceRenderCameraComplex = false,
		loxelDisableRenderCameraComplex = false,
		loxelDisableScissorOnRenderCameraSimple = false,
		loxelDefaultClipCamera = true
	}
}
