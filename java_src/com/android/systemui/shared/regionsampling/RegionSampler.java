package com.android.systemui.shared.regionsampling;

import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.Display;
import android.view.View;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import m3.a;
/* loaded from: classes.dex */
public class RegionSampler implements WallpaperManager.LocalWallpaperColorConsumer {
    public static final Companion Companion = new Companion(null);
    private static final boolean DEBUG = false;
    private static final String TAG = "RegionSampler";
    private final Executor bgExecutor;
    private int darkForegroundColor;
    private final Point displaySize;
    private WallpaperColors initialSampling;
    private final boolean isLockscreen;
    private final RegionSampler$layoutChangedListener$1 layoutChangedListener;
    private int lightForegroundColor;
    private final Executor mainExecutor;
    private RegionDarkness regionDarkness;
    private final boolean regionSamplingEnabled;
    private final View sampledView;
    private Rect samplingBounds;
    private final int[] tmpScreenLocation;
    private final a updateForegroundColor;
    private final WallpaperManager wallpaperManager;

    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RegionSampler(View sampledView, Executor executor, Executor executor2, boolean z4, a updateForegroundColor) {
        this(sampledView, executor, executor2, z4, false, null, updateForegroundColor, 48, null);
        h.e(sampledView, "sampledView");
        h.e(updateForegroundColor, "updateForegroundColor");
    }

    public static /* synthetic */ void getDisplaySize$annotations() {
    }

    private final RegionDarkness getRegionDarkness(boolean z4) {
        return z4 ? RegionDarkness.DARK : RegionDarkness.LIGHT;
    }

    public final RectF calculateScreenLocation(View sampledView) {
        h.e(sampledView, "sampledView");
        int[] iArr = this.tmpScreenLocation;
        sampledView.getLocationOnScreen(iArr);
        int i4 = iArr[0];
        int i5 = iArr[1];
        Rect rect = this.samplingBounds;
        rect.left = i4;
        rect.top = i5;
        rect.right = sampledView.getWidth() + i4;
        this.samplingBounds.bottom = sampledView.getHeight() + i5;
        Rect rect2 = this.samplingBounds;
        int i6 = rect2.right;
        Point point = this.displaySize;
        int i7 = point.x;
        if (i6 > i7) {
            rect2.right = i7;
        }
        int i8 = rect2.bottom;
        int i9 = point.y;
        if (i8 > i9) {
            rect2.bottom = i9;
        }
        return new RectF(this.samplingBounds);
    }

    public final RectF convertBounds(RectF originalBounds) {
        h.e(originalBounds, "originalBounds");
        Point point = this.displaySize;
        int i4 = point.x;
        int i5 = point.y;
        RectF rectF = new RectF();
        float f4 = i4;
        float f5 = 0;
        float f6 = 1;
        rectF.left = ((originalBounds.left / f4) + f5) / f6;
        rectF.right = ((originalBounds.right / f4) + f5) / f6;
        float f7 = i5;
        rectF.top = originalBounds.top / f7;
        rectF.bottom = originalBounds.bottom / f7;
        return rectF;
    }

    public final int currentForegroundColor() {
        return this.regionDarkness.isDark() ? this.lightForegroundColor : this.darkForegroundColor;
    }

    public final RegionDarkness currentRegionDarkness() {
        return this.regionDarkness;
    }

    public final void dump(PrintWriter pw) {
        h.e(pw, "pw");
        pw.println("[RegionSampler]");
        boolean z4 = this.regionSamplingEnabled;
        pw.println("regionSamplingEnabled: " + z4);
        RegionDarkness regionDarkness = this.regionDarkness;
        pw.println("regionDarkness: " + regionDarkness);
        String hexString = Integer.toHexString(this.lightForegroundColor);
        pw.println("lightForegroundColor: " + hexString);
        String hexString2 = Integer.toHexString(this.darkForegroundColor);
        pw.println("darkForegroundColor: " + hexString2);
        View view = this.sampledView;
        pw.println("passed-in sampledView: " + view);
        Rect rect = this.samplingBounds;
        pw.println("calculated samplingBounds: " + rect);
        int width = this.sampledView.getWidth();
        int height = this.sampledView.getHeight();
        pw.println("sampledView width: " + width + ", sampledView height: " + height);
        Point point = this.displaySize;
        int i4 = point.x;
        int i5 = point.y;
        pw.println("screen width: " + i4 + ", screen height: " + i5);
        RectF calculateScreenLocation = calculateScreenLocation(this.sampledView);
        if (calculateScreenLocation == null) {
            calculateScreenLocation = new RectF();
        }
        RectF convertBounds = convertBounds(calculateScreenLocation);
        pw.println("sampledRegionWithOffset: " + convertBounds);
        String str = this.isLockscreen ? "lockscreen" : "homescreen";
        WallpaperColors wallpaperColors = this.initialSampling;
        pw.println("initialSampling for " + str + ": " + wallpaperColors);
    }

    public final Executor getBgExecutor() {
        return this.bgExecutor;
    }

    public final Point getDisplaySize() {
        return this.displaySize;
    }

    public final Executor getMainExecutor() {
        return this.mainExecutor;
    }

    public final boolean getRegionSamplingEnabled() {
        return this.regionSamplingEnabled;
    }

    public final View getSampledView() {
        return this.sampledView;
    }

    public final a getUpdateForegroundColor() {
        return this.updateForegroundColor;
    }

    public final WallpaperManager getWallpaperManager() {
        return this.wallpaperManager;
    }

    public final boolean isLockscreen() {
        return this.isLockscreen;
    }

    public void onColorsChanged(RectF rectF, WallpaperColors wallpaperColors) {
        boolean z4 = false;
        if (wallpaperColors != null && (wallpaperColors.getColorHints() & 1) == 1) {
            z4 = true;
        }
        this.regionDarkness = getRegionDarkness(!z4);
        this.updateForegroundColor.invoke();
    }

    public final void setForegroundColors(int i4, int i5) {
        this.lightForegroundColor = i4;
        this.darkForegroundColor = i5;
    }

    public final void startRegionSampler() {
        if (this.regionSamplingEnabled) {
            this.sampledView.addOnLayoutChangeListener(this.layoutChangedListener);
            RectF calculateScreenLocation = calculateScreenLocation(this.sampledView);
            if (calculateScreenLocation == null || calculateScreenLocation.isEmpty()) {
                return;
            }
            final RectF convertBounds = convertBounds(calculateScreenLocation);
            if (convertBounds.left < 0.0d || convertBounds.right > 1.0d || convertBounds.top < 0.0d || convertBounds.bottom > 1.0d) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(convertBounds);
            WallpaperManager wallpaperManager = this.wallpaperManager;
            if (wallpaperManager != null) {
                wallpaperManager.addOnColorsChangedListener(this, arrayList, this.isLockscreen ? 2 : 1);
            }
            Executor executor = this.bgExecutor;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.android.systemui.shared.regionsampling.RegionSampler$startRegionSampler$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WallpaperColors wallpaperColors;
                        RegionSampler regionSampler = RegionSampler.this;
                        WallpaperManager wallpaperManager2 = regionSampler.getWallpaperManager();
                        if (wallpaperManager2 != null) {
                            wallpaperColors = wallpaperManager2.getWallpaperColors(RegionSampler.this.isLockscreen() ? 2 : 1);
                        } else {
                            wallpaperColors = null;
                        }
                        regionSampler.initialSampling = wallpaperColors;
                        Executor mainExecutor = RegionSampler.this.getMainExecutor();
                        if (mainExecutor != null) {
                            final RegionSampler regionSampler2 = RegionSampler.this;
                            final RectF rectF = convertBounds;
                            mainExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.regionsampling.RegionSampler$startRegionSampler$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WallpaperColors wallpaperColors2;
                                    RegionSampler regionSampler3 = RegionSampler.this;
                                    RectF rectF2 = rectF;
                                    wallpaperColors2 = regionSampler3.initialSampling;
                                    regionSampler3.onColorsChanged(rectF2, wallpaperColors2);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public final void stopRegionSampler() {
        WallpaperManager wallpaperManager = this.wallpaperManager;
        if (wallpaperManager != null) {
            wallpaperManager.removeOnColorsChangedListener(this);
        }
        this.sampledView.removeOnLayoutChangeListener(this.layoutChangedListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RegionSampler(View sampledView, Executor executor, Executor executor2, boolean z4, boolean z5, a updateForegroundColor) {
        this(sampledView, executor, executor2, z4, z5, null, updateForegroundColor, 32, null);
        h.e(sampledView, "sampledView");
        h.e(updateForegroundColor, "updateForegroundColor");
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.systemui.shared.regionsampling.RegionSampler$layoutChangedListener$1] */
    public RegionSampler(View sampledView, Executor executor, Executor executor2, boolean z4, boolean z5, WallpaperManager wallpaperManager, a updateForegroundColor) {
        Display display;
        h.e(sampledView, "sampledView");
        h.e(updateForegroundColor, "updateForegroundColor");
        this.sampledView = sampledView;
        this.mainExecutor = executor;
        this.bgExecutor = executor2;
        this.regionSamplingEnabled = z4;
        this.isLockscreen = z5;
        this.wallpaperManager = wallpaperManager;
        this.updateForegroundColor = updateForegroundColor;
        this.regionDarkness = RegionDarkness.DEFAULT;
        this.samplingBounds = new Rect();
        this.tmpScreenLocation = new int[2];
        this.lightForegroundColor = -1;
        this.darkForegroundColor = -16777216;
        Point point = new Point();
        this.displaySize = point;
        this.layoutChangedListener = new View.OnLayoutChangeListener() { // from class: com.android.systemui.shared.regionsampling.RegionSampler$layoutChangedListener$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                if (RegionSampler.this.getSampledView().getLocationOnScreen()[0] < 0 || RegionSampler.this.getSampledView().getLocationOnScreen()[1] < 0 || h.a(new Rect(i4, i5, i6, i7), new Rect(i8, i9, i10, i11))) {
                    return;
                }
                RegionSampler.this.stopRegionSampler();
                RegionSampler.this.startRegionSampler();
            }
        };
        Context context = sampledView.getContext();
        if (context == null || (display = context.getDisplay()) == null) {
            return;
        }
        display.getSize(point);
    }

    public /* synthetic */ RegionSampler(View view, Executor executor, Executor executor2, boolean z4, boolean z5, WallpaperManager wallpaperManager, a aVar, int i4, f fVar) {
        this(view, executor, executor2, z4, (i4 & 16) != 0 ? false : z5, (i4 & 32) != 0 ? WallpaperManager.getInstance(view.getContext()) : wallpaperManager, aVar);
    }
}
