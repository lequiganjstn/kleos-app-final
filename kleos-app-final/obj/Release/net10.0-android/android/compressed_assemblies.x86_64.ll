; ModuleID = 'compressed_assemblies.x86_64.ll'
source_filename = "compressed_assemblies.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	i32 ; uint32_t buffer_offset
}

@compressed_assembly_count = dso_local local_unnamed_addr constant i32 337, align 4

@compressed_assembly_descriptors = dso_local local_unnamed_addr global [337 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 262656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 0; uint32_t buffer_offset
	}, ; 0: kleos-app-final
	%struct.CompressedAssemblyDescriptor {
		i32 23040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 262656; uint32_t buffer_offset
	}, ; 1: BCrypt-Net-Next
	%struct.CompressedAssemblyDescriptor {
		i32 549200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 285696; uint32_t buffer_offset
	}, ; 2: CommunityToolkit.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 159056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 834896; uint32_t buffer_offset
	}, ; 3: CommunityToolkit.Maui.Core
	%struct.CompressedAssemblyDescriptor {
		i32 146760, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 993952; uint32_t buffer_offset
	}, ; 4: CommunityToolkit.Mvvm
	%struct.CompressedAssemblyDescriptor {
		i32 174128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1140712; uint32_t buffer_offset
	}, ; 5: GoogleGson
	%struct.CompressedAssemblyDescriptor {
		i32 72704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1314840; uint32_t buffer_offset
	}, ; 6: Microcharts.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 45320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1387544; uint32_t buffer_offset
	}, ; 7: Microsoft.Extensions.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 28984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1432864; uint32_t buffer_offset
	}, ; 8: Microsoft.Extensions.Configuration.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 96008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1461848; uint32_t buffer_offset
	}, ; 9: Microsoft.Extensions.DependencyInjection
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1557856; uint32_t buffer_offset
	}, ; 10: Microsoft.Extensions.DependencyInjection.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 31504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1624168; uint32_t buffer_offset
	}, ; 11: Microsoft.Extensions.Diagnostics.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 23864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1655672; uint32_t buffer_offset
	}, ; 12: Microsoft.Extensions.FileProviders.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 54536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1679536; uint32_t buffer_offset
	}, ; 13: Microsoft.Extensions.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 52016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1734072; uint32_t buffer_offset
	}, ; 14: Microsoft.Extensions.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 67344, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1786088; uint32_t buffer_offset
	}, ; 15: Microsoft.Extensions.Logging.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 20240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1853432; uint32_t buffer_offset
	}, ; 16: Microsoft.Extensions.Logging.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 65848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1873672; uint32_t buffer_offset
	}, ; 17: Microsoft.Extensions.Options
	%struct.CompressedAssemblyDescriptor {
		i32 45328, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1939520; uint32_t buffer_offset
	}, ; 18: Microsoft.Extensions.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 1944912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1984848; uint32_t buffer_offset
	}, ; 19: Microsoft.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 135464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3929760; uint32_t buffer_offset
	}, ; 20: Microsoft.Maui.Controls.Xaml
	%struct.CompressedAssemblyDescriptor {
		i32 929280, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4065224; uint32_t buffer_offset
	}, ; 21: Microsoft.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 280872, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4994504; uint32_t buffer_offset
	}, ; 22: Microsoft.Maui.Essentials
	%struct.CompressedAssemblyDescriptor {
		i32 209704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5275376; uint32_t buffer_offset
	}, ; 23: Microsoft.Maui.Graphics
	%struct.CompressedAssemblyDescriptor {
		i32 425472, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5485080; uint32_t buffer_offset
	}, ; 24: SkiaSharp
	%struct.CompressedAssemblyDescriptor {
		i32 43008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5910552; uint32_t buffer_offset
	}, ; 25: SkiaSharp.Views.Android
	%struct.CompressedAssemblyDescriptor {
		i32 29744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5953560; uint32_t buffer_offset
	}, ; 26: SkiaSharp.Views.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 30760, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5983304; uint32_t buffer_offset
	}, ; 27: SkiaSharp.Views.Maui.Core
	%struct.CompressedAssemblyDescriptor {
		i32 107520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6014064; uint32_t buffer_offset
	}, ; 28: SQLite-net
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6121584; uint32_t buffer_offset
	}, ; 29: SQLitePCLRaw.batteries_v2
	%struct.CompressedAssemblyDescriptor {
		i32 51200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6127216; uint32_t buffer_offset
	}, ; 30: SQLitePCLRaw.core
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6178416; uint32_t buffer_offset
	}, ; 31: SQLitePCLRaw.lib.e_sqlite3.android
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6184048; uint32_t buffer_offset
	}, ; 32: SQLitePCLRaw.provider.e_sqlite3
	%struct.CompressedAssemblyDescriptor {
		i32 1176064, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6220912; uint32_t buffer_offset
	}, ; 33: Xamarin.Android.Glide
	%struct.CompressedAssemblyDescriptor {
		i32 15944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7396976; uint32_t buffer_offset
	}, ; 34: Xamarin.Android.Glide.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 25632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7412920; uint32_t buffer_offset
	}, ; 35: Xamarin.Android.Glide.DiskLruCache
	%struct.CompressedAssemblyDescriptor {
		i32 63032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7438552; uint32_t buffer_offset
	}, ; 36: Xamarin.Android.Glide.GifDecoder
	%struct.CompressedAssemblyDescriptor {
		i32 186880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7501584; uint32_t buffer_offset
	}, ; 37: Xamarin.AndroidX.Activity
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7688464; uint32_t buffer_offset
	}, ; 38: Xamarin.AndroidX.Activity.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7704392; uint32_t buffer_offset
	}, ; 39: Xamarin.AndroidX.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 38432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7720304; uint32_t buffer_offset
	}, ; 40: Xamarin.AndroidX.Annotation.Experimental
	%struct.CompressedAssemblyDescriptor {
		i32 215608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7758736; uint32_t buffer_offset
	}, ; 41: Xamarin.AndroidX.Annotation.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 1293312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7974344; uint32_t buffer_offset
	}, ; 42: Xamarin.AndroidX.AppCompat
	%struct.CompressedAssemblyDescriptor {
		i32 93184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9267656; uint32_t buffer_offset
	}, ; 43: Xamarin.AndroidX.AppCompat.AppCompatResources
	%struct.CompressedAssemblyDescriptor {
		i32 38984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9360840; uint32_t buffer_offset
	}, ; 44: Xamarin.AndroidX.Arch.Core.Common
	%struct.CompressedAssemblyDescriptor {
		i32 28192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9399824; uint32_t buffer_offset
	}, ; 45: Xamarin.AndroidX.Arch.Core.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 399360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9428016; uint32_t buffer_offset
	}, ; 46: Xamarin.AndroidX.Browser
	%struct.CompressedAssemblyDescriptor {
		i32 35400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9827376; uint32_t buffer_offset
	}, ; 47: Xamarin.AndroidX.CardView
	%struct.CompressedAssemblyDescriptor {
		i32 15944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9862776; uint32_t buffer_offset
	}, ; 48: Xamarin.AndroidX.Collection
	%struct.CompressedAssemblyDescriptor {
		i32 628768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9878720; uint32_t buffer_offset
	}, ; 49: Xamarin.AndroidX.Collection.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10507488; uint32_t buffer_offset
	}, ; 50: Xamarin.AndroidX.Collection.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 36424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10523392; uint32_t buffer_offset
	}, ; 51: Xamarin.AndroidX.Concurrent.Futures
	%struct.CompressedAssemblyDescriptor {
		i32 741888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10559816; uint32_t buffer_offset
	}, ; 52: Xamarin.AndroidX.ConstraintLayout
	%struct.CompressedAssemblyDescriptor {
		i32 1466936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11301704; uint32_t buffer_offset
	}, ; 53: Xamarin.AndroidX.ConstraintLayout.Core
	%struct.CompressedAssemblyDescriptor {
		i32 102400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12768640; uint32_t buffer_offset
	}, ; 54: Xamarin.AndroidX.CoordinatorLayout
	%struct.CompressedAssemblyDescriptor {
		i32 2224640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12871040; uint32_t buffer_offset
	}, ; 55: Xamarin.AndroidX.Core
	%struct.CompressedAssemblyDescriptor {
		i32 216608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15095680; uint32_t buffer_offset
	}, ; 56: Xamarin.AndroidX.Core.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 20016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15312288; uint32_t buffer_offset
	}, ; 57: Xamarin.AndroidX.Core.ViewTree
	%struct.CompressedAssemblyDescriptor {
		i32 64040, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15332304; uint32_t buffer_offset
	}, ; 58: Xamarin.AndroidX.CursorAdapter
	%struct.CompressedAssemblyDescriptor {
		i32 74776, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15396344; uint32_t buffer_offset
	}, ; 59: Xamarin.AndroidX.CustomView
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15471120; uint32_t buffer_offset
	}, ; 60: Xamarin.AndroidX.CustomView.PoolingContainer
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15486480; uint32_t buffer_offset
	}, ; 61: Xamarin.AndroidX.DrawerLayout
	%struct.CompressedAssemblyDescriptor {
		i32 62976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15544336; uint32_t buffer_offset
	}, ; 62: Xamarin.AndroidX.DynamicAnimation
	%struct.CompressedAssemblyDescriptor {
		i32 288816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15607312; uint32_t buffer_offset
	}, ; 63: Xamarin.AndroidX.Emoji2
	%struct.CompressedAssemblyDescriptor {
		i32 26144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15896128; uint32_t buffer_offset
	}, ; 64: Xamarin.AndroidX.Emoji2.ViewsHelper
	%struct.CompressedAssemblyDescriptor {
		i32 73288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15922272; uint32_t buffer_offset
	}, ; 65: Xamarin.AndroidX.ExifInterface
	%struct.CompressedAssemblyDescriptor {
		i32 376320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15995560; uint32_t buffer_offset
	}, ; 66: Xamarin.AndroidX.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 27192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16371880; uint32_t buffer_offset
	}, ; 67: Xamarin.AndroidX.Fragment.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 26152, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16399072; uint32_t buffer_offset
	}, ; 68: Xamarin.AndroidX.Interpolator
	%struct.CompressedAssemblyDescriptor {
		i32 16952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16425224; uint32_t buffer_offset
	}, ; 69: Xamarin.AndroidX.Lifecycle.Common
	%struct.CompressedAssemblyDescriptor {
		i32 71200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16442176; uint32_t buffer_offset
	}, ; 70: Xamarin.AndroidX.Lifecycle.Common.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 39464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16513376; uint32_t buffer_offset
	}, ; 71: Xamarin.AndroidX.Lifecycle.LiveData
	%struct.CompressedAssemblyDescriptor {
		i32 36936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16552840; uint32_t buffer_offset
	}, ; 72: Xamarin.AndroidX.Lifecycle.LiveData.Core
	%struct.CompressedAssemblyDescriptor {
		i32 16440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16589776; uint32_t buffer_offset
	}, ; 73: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 22584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16606216; uint32_t buffer_offset
	}, ; 74: Xamarin.AndroidX.Lifecycle.Process
	%struct.CompressedAssemblyDescriptor {
		i32 15416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16628800; uint32_t buffer_offset
	}, ; 75: Xamarin.AndroidX.Lifecycle.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16644216; uint32_t buffer_offset
	}, ; 76: Xamarin.AndroidX.Lifecycle.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16688248; uint32_t buffer_offset
	}, ; 77: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 16456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16704152; uint32_t buffer_offset
	}, ; 78: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16720608; uint32_t buffer_offset
	}, ; 79: Xamarin.AndroidX.Lifecycle.ViewModel
	%struct.CompressedAssemblyDescriptor {
		i32 88632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16737536; uint32_t buffer_offset
	}, ; 80: Xamarin.AndroidX.Lifecycle.ViewModel.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16826168; uint32_t buffer_offset
	}, ; 81: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16842608; uint32_t buffer_offset
	}, ; 82: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
	%struct.CompressedAssemblyDescriptor {
		i32 48200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16858536; uint32_t buffer_offset
	}, ; 83: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 61440, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16906736; uint32_t buffer_offset
	}, ; 84: Xamarin.AndroidX.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16968176; uint32_t buffer_offset
	}, ; 85: Xamarin.AndroidX.Navigation.Common
	%struct.CompressedAssemblyDescriptor {
		i32 233016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16984080; uint32_t buffer_offset
	}, ; 86: Xamarin.AndroidX.Navigation.Common.Android
	%struct.CompressedAssemblyDescriptor {
		i32 60960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17217096; uint32_t buffer_offset
	}, ; 87: Xamarin.AndroidX.Navigation.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 15928, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17278056; uint32_t buffer_offset
	}, ; 88: Xamarin.AndroidX.Navigation.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 114688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17293984; uint32_t buffer_offset
	}, ; 89: Xamarin.AndroidX.Navigation.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 47104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17408672; uint32_t buffer_offset
	}, ; 90: Xamarin.AndroidX.Navigation.UI
	%struct.CompressedAssemblyDescriptor {
		i32 52784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17455776; uint32_t buffer_offset
	}, ; 91: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
	%struct.CompressedAssemblyDescriptor {
		i32 660992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 17508560; uint32_t buffer_offset
	}, ; 92: Xamarin.AndroidX.RecyclerView
	%struct.CompressedAssemblyDescriptor {
		i32 30792, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18169552; uint32_t buffer_offset
	}, ; 93: Xamarin.AndroidX.ResourceInspection.Annotation
	%struct.CompressedAssemblyDescriptor {
		i32 15912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18200344; uint32_t buffer_offset
	}, ; 94: Xamarin.AndroidX.SavedState
	%struct.CompressedAssemblyDescriptor {
		i32 91688, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18216256; uint32_t buffer_offset
	}, ; 95: Xamarin.AndroidX.SavedState.SavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18307944; uint32_t buffer_offset
	}, ; 96: Xamarin.AndroidX.SavedState.SavedState.Ktx
	%struct.CompressedAssemblyDescriptor {
		i32 46648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18324360; uint32_t buffer_offset
	}, ; 97: Xamarin.AndroidX.Security.SecurityCrypto
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18371008; uint32_t buffer_offset
	}, ; 98: Xamarin.AndroidX.SlidingPaneLayout
	%struct.CompressedAssemblyDescriptor {
		i32 31304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18411456; uint32_t buffer_offset
	}, ; 99: Xamarin.AndroidX.Startup.StartupRuntime
	%struct.CompressedAssemblyDescriptor {
		i32 67584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18442760; uint32_t buffer_offset
	}, ; 100: Xamarin.AndroidX.SwipeRefreshLayout
	%struct.CompressedAssemblyDescriptor {
		i32 15392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18510344; uint32_t buffer_offset
	}, ; 101: Xamarin.AndroidX.Tracing.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 24104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18525736; uint32_t buffer_offset
	}, ; 102: Xamarin.AndroidX.Tracing.Tracing.Android
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18549840; uint32_t buffer_offset
	}, ; 103: Xamarin.AndroidX.Transition
	%struct.CompressedAssemblyDescriptor {
		i32 36384, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18724944; uint32_t buffer_offset
	}, ; 104: Xamarin.AndroidX.VectorDrawable
	%struct.CompressedAssemblyDescriptor {
		i32 49184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18761328; uint32_t buffer_offset
	}, ; 105: Xamarin.AndroidX.VectorDrawable.Animated
	%struct.CompressedAssemblyDescriptor {
		i32 122936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18810512; uint32_t buffer_offset
	}, ; 106: Xamarin.AndroidX.VersionedParcelable
	%struct.CompressedAssemblyDescriptor {
		i32 86016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 18933448; uint32_t buffer_offset
	}, ; 107: Xamarin.AndroidX.ViewPager
	%struct.CompressedAssemblyDescriptor {
		i32 64512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19019464; uint32_t buffer_offset
	}, ; 108: Xamarin.AndroidX.ViewPager2
	%struct.CompressedAssemblyDescriptor {
		i32 271904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19083976; uint32_t buffer_offset
	}, ; 109: Xamarin.AndroidX.Window
	%struct.CompressedAssemblyDescriptor {
		i32 15904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19355880; uint32_t buffer_offset
	}, ; 110: Xamarin.AndroidX.Window.WindowCore
	%struct.CompressedAssemblyDescriptor {
		i32 35360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19371784; uint32_t buffer_offset
	}, ; 111: Xamarin.AndroidX.Window.WindowCore.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 2774016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 19407144; uint32_t buffer_offset
	}, ; 112: Xamarin.Google.Android.Material
	%struct.CompressedAssemblyDescriptor {
		i32 102432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 22181160; uint32_t buffer_offset
	}, ; 113: Jsr305Binding
	%struct.CompressedAssemblyDescriptor {
		i32 5886976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 22283592; uint32_t buffer_offset
	}, ; 114: Xamarin.Google.Crypto.Tink.Android
	%struct.CompressedAssemblyDescriptor {
		i32 101944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 28170568; uint32_t buffer_offset
	}, ; 115: Xamarin.Google.ErrorProne.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 27192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 28272512; uint32_t buffer_offset
	}, ; 116: Xamarin.Google.Guava.ListenableFuture
	%struct.CompressedAssemblyDescriptor {
		i32 165944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 28299704; uint32_t buffer_offset
	}, ; 117: Xamarin.Jetbrains.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 28728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 28465648; uint32_t buffer_offset
	}, ; 118: Xamarin.JSpecify
	%struct.CompressedAssemblyDescriptor {
		i32 2375680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 28494376; uint32_t buffer_offset
	}, ; 119: Xamarin.Kotlin.StdLib
	%struct.CompressedAssemblyDescriptor {
		i32 27680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 30870056; uint32_t buffer_offset
	}, ; 120: Xamarin.KotlinX.Coroutines.Android
	%struct.CompressedAssemblyDescriptor {
		i32 16432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 30897736; uint32_t buffer_offset
	}, ; 121: Xamarin.KotlinX.Coroutines.Core
	%struct.CompressedAssemblyDescriptor {
		i32 568880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 30914168; uint32_t buffer_offset
	}, ; 122: Xamarin.KotlinX.Coroutines.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 16416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31483048; uint32_t buffer_offset
	}, ; 123: Xamarin.KotlinX.Serialization.Core
	%struct.CompressedAssemblyDescriptor {
		i32 312376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31499464; uint32_t buffer_offset
	}, ; 124: Xamarin.KotlinX.Serialization.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31811840; uint32_t buffer_offset
	}, ; 125: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31826984; uint32_t buffer_offset
	}, ; 126: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31842128; uint32_t buffer_offset
	}, ; 127: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31857272; uint32_t buffer_offset
	}, ; 128: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31872416; uint32_t buffer_offset
	}, ; 129: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31887600; uint32_t buffer_offset
	}, ; 130: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31902744; uint32_t buffer_offset
	}, ; 131: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31917928; uint32_t buffer_offset
	}, ; 132: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31933072; uint32_t buffer_offset
	}, ; 133: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31948216; uint32_t buffer_offset
	}, ; 134: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31963360; uint32_t buffer_offset
	}, ; 135: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31978504; uint32_t buffer_offset
	}, ; 136: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31993648; uint32_t buffer_offset
	}, ; 137: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32008792; uint32_t buffer_offset
	}, ; 138: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32023976; uint32_t buffer_offset
	}, ; 139: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32039120; uint32_t buffer_offset
	}, ; 140: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32054264; uint32_t buffer_offset
	}, ; 141: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32069448; uint32_t buffer_offset
	}, ; 142: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32084592; uint32_t buffer_offset
	}, ; 143: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32099776; uint32_t buffer_offset
	}, ; 144: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32114920; uint32_t buffer_offset
	}, ; 145: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32130104; uint32_t buffer_offset
	}, ; 146: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32145288; uint32_t buffer_offset
	}, ; 147: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32160472; uint32_t buffer_offset
	}, ; 148: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32175656; uint32_t buffer_offset
	}, ; 149: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32190840; uint32_t buffer_offset
	}, ; 150: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32205984; uint32_t buffer_offset
	}, ; 151: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32221128; uint32_t buffer_offset
	}, ; 152: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32236272; uint32_t buffer_offset
	}, ; 153: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32251456; uint32_t buffer_offset
	}, ; 154: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32266600; uint32_t buffer_offset
	}, ; 155: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32281744; uint32_t buffer_offset
	}, ; 156: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32296888; uint32_t buffer_offset
	}, ; 157: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32312032; uint32_t buffer_offset
	}, ; 158: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 721408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 32327176; uint32_t buffer_offset
	}, ; 159: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 312080, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33048584; uint32_t buffer_offset
	}, ; 160: Microsoft.CSharp
	%struct.CompressedAssemblyDescriptor {
		i32 429320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33360664; uint32_t buffer_offset
	}, ; 161: Microsoft.VisualBasic.Core
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33789984; uint32_t buffer_offset
	}, ; 162: Microsoft.VisualBasic
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33807656; uint32_t buffer_offset
	}, ; 163: Microsoft.Win32.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 33544, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33823832; uint32_t buffer_offset
	}, ; 164: Microsoft.Win32.Registry
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33857376; uint32_t buffer_offset
	}, ; 165: System.AppContext
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33873048; uint32_t buffer_offset
	}, ; 166: System.Buffers
	%struct.CompressedAssemblyDescriptor {
		i32 89352, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33888712; uint32_t buffer_offset
	}, ; 167: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 251704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 33978064; uint32_t buffer_offset
	}, ; 168: System.Collections.Immutable
	%struct.CompressedAssemblyDescriptor {
		i32 48400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34229768; uint32_t buffer_offset
	}, ; 169: System.Collections.NonGeneric
	%struct.CompressedAssemblyDescriptor {
		i32 48392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34278168; uint32_t buffer_offset
	}, ; 170: System.Collections.Specialized
	%struct.CompressedAssemblyDescriptor {
		i32 113416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34326560; uint32_t buffer_offset
	}, ; 171: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 103224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34439976; uint32_t buffer_offset
	}, ; 172: System.ComponentModel.Annotations
	%struct.CompressedAssemblyDescriptor {
		i32 17168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34543200; uint32_t buffer_offset
	}, ; 173: System.ComponentModel.DataAnnotations
	%struct.CompressedAssemblyDescriptor {
		i32 26888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34560368; uint32_t buffer_offset
	}, ; 174: System.ComponentModel.EventBasedAsync
	%struct.CompressedAssemblyDescriptor {
		i32 42808, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34587256; uint32_t buffer_offset
	}, ; 175: System.ComponentModel.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 317192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34630064; uint32_t buffer_offset
	}, ; 176: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34947256; uint32_t buffer_offset
	}, ; 177: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 19720, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34963904; uint32_t buffer_offset
	}, ; 178: System.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 50952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 34983624; uint32_t buffer_offset
	}, ; 179: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35034576; uint32_t buffer_offset
	}, ; 180: System.Core
	%struct.CompressedAssemblyDescriptor {
		i32 1018680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 35058392; uint32_t buffer_offset
	}, ; 181: System.Data.Common
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36077072; uint32_t buffer_offset
	}, ; 182: System.Data.DataSetExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 25904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36093208; uint32_t buffer_offset
	}, ; 183: System.Data
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36119112; uint32_t buffer_offset
	}, ; 184: System.Diagnostics.Contracts
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36135760; uint32_t buffer_offset
	}, ; 185: System.Diagnostics.Debug
	%struct.CompressedAssemblyDescriptor {
		i32 203016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36151896; uint32_t buffer_offset
	}, ; 186: System.Diagnostics.DiagnosticSource
	%struct.CompressedAssemblyDescriptor {
		i32 29960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36354912; uint32_t buffer_offset
	}, ; 187: System.Diagnostics.FileVersionInfo
	%struct.CompressedAssemblyDescriptor {
		i32 129336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36384872; uint32_t buffer_offset
	}, ; 188: System.Diagnostics.Process
	%struct.CompressedAssemblyDescriptor {
		i32 26416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36514208; uint32_t buffer_offset
	}, ; 189: System.Diagnostics.StackTrace
	%struct.CompressedAssemblyDescriptor {
		i32 32008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36540624; uint32_t buffer_offset
	}, ; 190: System.Diagnostics.TextWriterTraceListener
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36572632; uint32_t buffer_offset
	}, ; 191: System.Diagnostics.Tools
	%struct.CompressedAssemblyDescriptor {
		i32 59144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36588256; uint32_t buffer_offset
	}, ; 192: System.Diagnostics.TraceSource
	%struct.CompressedAssemblyDescriptor {
		i32 16656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36647400; uint32_t buffer_offset
	}, ; 193: System.Diagnostics.Tracing
	%struct.CompressedAssemblyDescriptor {
		i32 65288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36664056; uint32_t buffer_offset
	}, ; 194: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 20744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36729344; uint32_t buffer_offset
	}, ; 195: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36750088; uint32_t buffer_offset
	}, ; 196: System.Dynamic.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 97544, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36766736; uint32_t buffer_offset
	}, ; 197: System.Formats.Asn1
	%struct.CompressedAssemblyDescriptor {
		i32 121616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36864280; uint32_t buffer_offset
	}, ; 198: System.Formats.Tar
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 36985896; uint32_t buffer_offset
	}, ; 199: System.Globalization.Calendars
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37002032; uint32_t buffer_offset
	}, ; 200: System.Globalization.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37017656; uint32_t buffer_offset
	}, ; 201: System.Globalization
	%struct.CompressedAssemblyDescriptor {
		i32 41736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37033840; uint32_t buffer_offset
	}, ; 202: System.IO.Compression.Brotli
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37075576; uint32_t buffer_offset
	}, ; 203: System.IO.Compression.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 54024, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37091208; uint32_t buffer_offset
	}, ; 204: System.IO.Compression.ZipFile
	%struct.CompressedAssemblyDescriptor {
		i32 168240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37145232; uint32_t buffer_offset
	}, ; 205: System.IO.Compression
	%struct.CompressedAssemblyDescriptor {
		i32 32520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37313472; uint32_t buffer_offset
	}, ; 206: System.IO.FileSystem.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 51976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37345992; uint32_t buffer_offset
	}, ; 207: System.IO.FileSystem.DriveInfo
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37397968; uint32_t buffer_offset
	}, ; 208: System.IO.FileSystem.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 55560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37413592; uint32_t buffer_offset
	}, ; 209: System.IO.FileSystem.Watcher
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37469152; uint32_t buffer_offset
	}, ; 210: System.IO.FileSystem
	%struct.CompressedAssemblyDescriptor {
		i32 43784, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37485288; uint32_t buffer_offset
	}, ; 211: System.IO.IsolatedStorage
	%struct.CompressedAssemblyDescriptor {
		i32 50448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37529072; uint32_t buffer_offset
	}, ; 212: System.IO.MemoryMappedFiles
	%struct.CompressedAssemblyDescriptor {
		i32 78640, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37579520; uint32_t buffer_offset
	}, ; 213: System.IO.Pipelines
	%struct.CompressedAssemblyDescriptor {
		i32 23856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37658160; uint32_t buffer_offset
	}, ; 214: System.IO.Pipes.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 67848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37682016; uint32_t buffer_offset
	}, ; 215: System.IO.Pipes
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37749864; uint32_t buffer_offset
	}, ; 216: System.IO.UnmanagedMemoryStream
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37766008; uint32_t buffer_offset
	}, ; 217: System.IO
	%struct.CompressedAssemblyDescriptor {
		i32 456968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 37782144; uint32_t buffer_offset
	}, ; 218: System.Linq.AsyncEnumerable
	%struct.CompressedAssemblyDescriptor {
		i32 575752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38239112; uint32_t buffer_offset
	}, ; 219: System.Linq.Expressions
	%struct.CompressedAssemblyDescriptor {
		i32 223504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 38814864; uint32_t buffer_offset
	}, ; 220: System.Linq.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 79160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39038368; uint32_t buffer_offset
	}, ; 221: System.Linq.Queryable
	%struct.CompressedAssemblyDescriptor {
		i32 201520, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39117528; uint32_t buffer_offset
	}, ; 222: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 56072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39319048; uint32_t buffer_offset
	}, ; 223: System.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 56584, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39375120; uint32_t buffer_offset
	}, ; 224: System.Net.Http.Json
	%struct.CompressedAssemblyDescriptor {
		i32 680712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 39431704; uint32_t buffer_offset
	}, ; 225: System.Net.Http
	%struct.CompressedAssemblyDescriptor {
		i32 132880, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40112416; uint32_t buffer_offset
	}, ; 226: System.Net.HttpListener
	%struct.CompressedAssemblyDescriptor {
		i32 175368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40245296; uint32_t buffer_offset
	}, ; 227: System.Net.Mail
	%struct.CompressedAssemblyDescriptor {
		i32 53000, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40420664; uint32_t buffer_offset
	}, ; 228: System.Net.NameResolution
	%struct.CompressedAssemblyDescriptor {
		i32 66824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40473664; uint32_t buffer_offset
	}, ; 229: System.Net.NetworkInformation
	%struct.CompressedAssemblyDescriptor {
		i32 56072, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40540488; uint32_t buffer_offset
	}, ; 230: System.Net.Ping
	%struct.CompressedAssemblyDescriptor {
		i32 109328, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40596560; uint32_t buffer_offset
	}, ; 231: System.Net.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 172304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40705888; uint32_t buffer_offset
	}, ; 232: System.Net.Quic
	%struct.CompressedAssemblyDescriptor {
		i32 162056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 40878192; uint32_t buffer_offset
	}, ; 233: System.Net.Requests
	%struct.CompressedAssemblyDescriptor {
		i32 255752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41040248; uint32_t buffer_offset
	}, ; 234: System.Net.Security
	%struct.CompressedAssemblyDescriptor {
		i32 41224, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41296000; uint32_t buffer_offset
	}, ; 235: System.Net.ServerSentEvents
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41337224; uint32_t buffer_offset
	}, ; 236: System.Net.ServicePoint
	%struct.CompressedAssemblyDescriptor {
		i32 238864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41352848; uint32_t buffer_offset
	}, ; 237: System.Net.Sockets
	%struct.CompressedAssemblyDescriptor {
		i32 70920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41591712; uint32_t buffer_offset
	}, ; 238: System.Net.WebClient
	%struct.CompressedAssemblyDescriptor {
		i32 33552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41662632; uint32_t buffer_offset
	}, ; 239: System.Net.WebHeaderCollection
	%struct.CompressedAssemblyDescriptor {
		i32 23824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41696184; uint32_t buffer_offset
	}, ; 240: System.Net.WebProxy
	%struct.CompressedAssemblyDescriptor {
		i32 51976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41720008; uint32_t buffer_offset
	}, ; 241: System.Net.WebSockets.Client
	%struct.CompressedAssemblyDescriptor {
		i32 109320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41771984; uint32_t buffer_offset
	}, ; 242: System.Net.WebSockets
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41881304; uint32_t buffer_offset
	}, ; 243: System.Net
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41898976; uint32_t buffer_offset
	}, ; 244: System.Numerics.Vectors
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41915112; uint32_t buffer_offset
	}, ; 245: System.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 41744, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41930736; uint32_t buffer_offset
	}, ; 246: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 859912, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 41972480; uint32_t buffer_offset
	}, ; 247: System.Private.DataContractSerialization
	%struct.CompressedAssemblyDescriptor {
		i32 106288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42832392; uint32_t buffer_offset
	}, ; 248: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 154424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 42938680; uint32_t buffer_offset
	}, ; 249: System.Private.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 3106568, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 43093104; uint32_t buffer_offset
	}, ; 250: System.Private.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 38664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46199672; uint32_t buffer_offset
	}, ; 251: System.Reflection.DispatchProxy
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46238336; uint32_t buffer_offset
	}, ; 252: System.Reflection.Emit.ILGeneration
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46254472; uint32_t buffer_offset
	}, ; 253: System.Reflection.Emit.Lightweight
	%struct.CompressedAssemblyDescriptor {
		i32 133936, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46270616; uint32_t buffer_offset
	}, ; 254: System.Reflection.Emit
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46404552; uint32_t buffer_offset
	}, ; 255: System.Reflection.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 504120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46420224; uint32_t buffer_offset
	}, ; 256: System.Reflection.Metadata
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46924344; uint32_t buffer_offset
	}, ; 257: System.Reflection.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 24840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46940520; uint32_t buffer_offset
	}, ; 258: System.Reflection.TypeExtensions
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46965360; uint32_t buffer_offset
	}, ; 259: System.Reflection
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46982008; uint32_t buffer_offset
	}, ; 260: System.Resources.Reader
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46997632; uint32_t buffer_offset
	}, ; 261: System.Resources.ResourceManager
	%struct.CompressedAssemblyDescriptor {
		i32 27400, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47013776; uint32_t buffer_offset
	}, ; 262: System.Resources.Writer
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47041176; uint32_t buffer_offset
	}, ; 263: System.Runtime.CompilerServices.Unsafe
	%struct.CompressedAssemblyDescriptor {
		i32 17712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47056800; uint32_t buffer_offset
	}, ; 264: System.Runtime.CompilerServices.VisualC
	%struct.CompressedAssemblyDescriptor {
		i32 18184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47074512; uint32_t buffer_offset
	}, ; 265: System.Runtime.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47092696; uint32_t buffer_offset
	}, ; 266: System.Runtime.Handles
	%struct.CompressedAssemblyDescriptor {
		i32 38672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47108872; uint32_t buffer_offset
	}, ; 267: System.Runtime.InteropServices.JavaScript
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47147544; uint32_t buffer_offset
	}, ; 268: System.Runtime.InteropServices.RuntimeInformation
	%struct.CompressedAssemblyDescriptor {
		i32 65288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47163216; uint32_t buffer_offset
	}, ; 269: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47228504; uint32_t buffer_offset
	}, ; 270: System.Runtime.Intrinsics
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47246176; uint32_t buffer_offset
	}, ; 271: System.Runtime.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 145672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47262312; uint32_t buffer_offset
	}, ; 272: System.Runtime.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 66312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47407984; uint32_t buffer_offset
	}, ; 273: System.Runtime.Serialization.Formatters
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47474296; uint32_t buffer_offset
	}, ; 274: System.Runtime.Serialization.Json
	%struct.CompressedAssemblyDescriptor {
		i32 23816, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47490440; uint32_t buffer_offset
	}, ; 275: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47514256; uint32_t buffer_offset
	}, ; 276: System.Runtime.Serialization.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 17712, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47531416; uint32_t buffer_offset
	}, ; 277: System.Runtime.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 45368, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47549128; uint32_t buffer_offset
	}, ; 278: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 58680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47594496; uint32_t buffer_offset
	}, ; 279: System.Security.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 55608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47653176; uint32_t buffer_offset
	}, ; 280: System.Security.Claims
	%struct.CompressedAssemblyDescriptor {
		i32 17672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47708784; uint32_t buffer_offset
	}, ; 281: System.Security.Cryptography.Algorithms
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47726456; uint32_t buffer_offset
	}, ; 282: System.Security.Cryptography.Cng
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47743104; uint32_t buffer_offset
	}, ; 283: System.Security.Cryptography.Csp
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47759752; uint32_t buffer_offset
	}, ; 284: System.Security.Cryptography.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47775936; uint32_t buffer_offset
	}, ; 285: System.Security.Cryptography.OpenSsl
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47792072; uint32_t buffer_offset
	}, ; 286: System.Security.Cryptography.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 17208, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47808256; uint32_t buffer_offset
	}, ; 287: System.Security.Cryptography.X509Certificates
	%struct.CompressedAssemblyDescriptor {
		i32 853264, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 47825464; uint32_t buffer_offset
	}, ; 288: System.Security.Cryptography
	%struct.CompressedAssemblyDescriptor {
		i32 38200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48678728; uint32_t buffer_offset
	}, ; 289: System.Security.Principal.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48716928; uint32_t buffer_offset
	}, ; 290: System.Security.Principal
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48732560; uint32_t buffer_offset
	}, ; 291: System.Security.SecureString
	%struct.CompressedAssemblyDescriptor {
		i32 18736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48748696; uint32_t buffer_offset
	}, ; 292: System.Security
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48767432; uint32_t buffer_offset
	}, ; 293: System.ServiceModel.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48784592; uint32_t buffer_offset
	}, ; 294: System.ServiceProcess
	%struct.CompressedAssemblyDescriptor {
		i32 743176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 48800768; uint32_t buffer_offset
	}, ; 295: System.Text.Encoding.CodePages
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49543944; uint32_t buffer_offset
	}, ; 296: System.Text.Encoding.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49560080; uint32_t buffer_offset
	}, ; 297: System.Text.Encoding
	%struct.CompressedAssemblyDescriptor {
		i32 66352, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49576264; uint32_t buffer_offset
	}, ; 298: System.Text.Encodings.Web
	%struct.CompressedAssemblyDescriptor {
		i32 649488, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 49642616; uint32_t buffer_offset
	}, ; 299: System.Text.Json
	%struct.CompressedAssemblyDescriptor {
		i32 385288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50292104; uint32_t buffer_offset
	}, ; 300: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 34096, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50677392; uint32_t buffer_offset
	}, ; 301: System.Threading.AccessControl
	%struct.CompressedAssemblyDescriptor {
		i32 66824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50711488; uint32_t buffer_offset
	}, ; 302: System.Threading.Channels
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50778312; uint32_t buffer_offset
	}, ; 303: System.Threading.Overlapped
	%struct.CompressedAssemblyDescriptor {
		i32 186128, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50794448; uint32_t buffer_offset
	}, ; 304: System.Threading.Tasks.Dataflow
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50980576; uint32_t buffer_offset
	}, ; 305: System.Threading.Tasks.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 61704, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 50996760; uint32_t buffer_offset
	}, ; 306: System.Threading.Tasks.Parallel
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51058464; uint32_t buffer_offset
	}, ; 307: System.Threading.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51075624; uint32_t buffer_offset
	}, ; 308: System.Threading.Thread
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51091760; uint32_t buffer_offset
	}, ; 309: System.Threading.ThreadPool
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51107896; uint32_t buffer_offset
	}, ; 310: System.Threading.Timer
	%struct.CompressedAssemblyDescriptor {
		i32 45320, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51123520; uint32_t buffer_offset
	}, ; 311: System.Threading
	%struct.CompressedAssemblyDescriptor {
		i32 176392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51168840; uint32_t buffer_offset
	}, ; 312: System.Transactions.Local
	%struct.CompressedAssemblyDescriptor {
		i32 17160, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51345232; uint32_t buffer_offset
	}, ; 313: System.Transactions
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51362392; uint32_t buffer_offset
	}, ; 314: System.ValueTuple
	%struct.CompressedAssemblyDescriptor {
		i32 30512, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51378528; uint32_t buffer_offset
	}, ; 315: System.Web.HttpUtility
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51409040; uint32_t buffer_offset
	}, ; 316: System.Web
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51424672; uint32_t buffer_offset
	}, ; 317: System.Windows
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51440808; uint32_t buffer_offset
	}, ; 318: System.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 22280, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51456944; uint32_t buffer_offset
	}, ; 319: System.Xml.ReaderWriter
	%struct.CompressedAssemblyDescriptor {
		i32 16648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51479224; uint32_t buffer_offset
	}, ; 320: System.Xml.Serialization
	%struct.CompressedAssemblyDescriptor {
		i32 16184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51495872; uint32_t buffer_offset
	}, ; 321: System.Xml.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51512056; uint32_t buffer_offset
	}, ; 322: System.Xml.XPath.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 16136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51528200; uint32_t buffer_offset
	}, ; 323: System.Xml.XPath
	%struct.CompressedAssemblyDescriptor {
		i32 16176, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51544336; uint32_t buffer_offset
	}, ; 324: System.Xml.XmlDocument
	%struct.CompressedAssemblyDescriptor {
		i32 18184, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51560512; uint32_t buffer_offset
	}, ; 325: System.Xml.XmlSerializer
	%struct.CompressedAssemblyDescriptor {
		i32 23856, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51578696; uint32_t buffer_offset
	}, ; 326: System.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 50952, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51602552; uint32_t buffer_offset
	}, ; 327: System
	%struct.CompressedAssemblyDescriptor {
		i32 16656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51653504; uint32_t buffer_offset
	}, ; 328: WindowsBase
	%struct.CompressedAssemblyDescriptor {
		i32 60168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51670160; uint32_t buffer_offset
	}, ; 329: mscorlib
	%struct.CompressedAssemblyDescriptor {
		i32 101168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51730328; uint32_t buffer_offset
	}, ; 330: netstandard
	%struct.CompressedAssemblyDescriptor {
		i32 244768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 51831496; uint32_t buffer_offset
	}, ; 331: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 83528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52076264; uint32_t buffer_offset
	}, ; 332: Mono.Android.Export
	%struct.CompressedAssemblyDescriptor {
		i32 22560, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52159792; uint32_t buffer_offset
	}, ; 333: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 41461248, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 52182352; uint32_t buffer_offset
	}, ; 334: Mono.Android
	%struct.CompressedAssemblyDescriptor {
		i32 55840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 93643600; uint32_t buffer_offset
	}, ; 335: System.IO.Hashing
	%struct.CompressedAssemblyDescriptor {
		i32 4964616, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 93699440; uint32_t buffer_offset
	} ; 336: System.Private.CoreLib
], align 16

@uncompressed_assemblies_data_size = dso_local local_unnamed_addr constant i32 98664056, align 4

@uncompressed_assemblies_data_buffer = dso_local local_unnamed_addr global [98664056 x i8] zeroinitializer, align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/darc-release/10.0.1xx-fce6efd9-cc42-423a-a4db-1a5ebe0f4ee4 @ 350a375fc202f0072ac4191624986d8c642b93fa"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
