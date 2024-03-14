package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
/* loaded from: classes.dex */
public class LauncherIcons extends BaseIconFactory {
    private static LauncherIcons sPool;
    private static int sPoolId;
    private static final Object sPoolSync = new Object();
    private MonochromeIconFactory mMonochromeIconFactory;
    private final int mPoolId;
    private LauncherIcons next;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LauncherIcons(android.content.Context r2, int r3, int r4, int r5) {
        /*
            r1 = this;
            com.android.launcher3.graphics.IconShape r0 = com.android.launcher3.graphics.IconShape.getShape()
            r0.getClass()
            boolean r0 = r0 instanceof com.android.launcher3.graphics.IconShape.Circle
            r1.<init>(r2, r3, r4, r0)
            boolean r2 = com.android.launcher3.util.Themes.isThemedIconEnabled(r2)
            r1.mMonoIconEnabled = r2
            r1.mPoolId = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.LauncherIcons.<init>(android.content.Context, int, int, int):void");
    }

    public static void clearPool() {
        synchronized (sPoolSync) {
            sPool = null;
            sPoolId++;
        }
    }

    public static LauncherIcons obtain(Context context) {
        if (context instanceof LauncherPreviewRenderer.PreviewContext) {
            return ((LauncherPreviewRenderer.PreviewContext) context).newLauncherIcons(context);
        }
        synchronized (sPoolSync) {
            LauncherIcons launcherIcons = sPool;
            if (launcherIcons != null) {
                sPool = launcherIcons.next;
                launcherIcons.next = null;
                return launcherIcons;
            }
            int i4 = sPoolId;
            InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context);
            return new LauncherIcons(context, invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize, i4);
        }
    }

    @Override // com.android.launcher3.icons.BaseIconFactory, java.lang.AutoCloseable
    public final void close() {
        recycle();
    }

    @Override // com.android.launcher3.icons.BaseIconFactory
    public final Drawable getMonochromeDrawable(Drawable drawable) {
        Drawable monochromeDrawable = super.getMonochromeDrawable(drawable);
        if (monochromeDrawable == null && FeatureFlags.ENABLE_FORCED_MONO_ICON.get()) {
            if (this.mMonochromeIconFactory == null) {
                this.mMonochromeIconFactory = new MonochromeIconFactory(this.mIconBitmapSize);
            }
            return this.mMonochromeIconFactory.wrap(drawable);
        }
        return monochromeDrawable;
    }

    public void recycle() {
        synchronized (sPoolSync) {
            if (sPoolId != this.mPoolId) {
                return;
            }
            clear();
            this.next = sPool;
            sPool = this;
        }
    }
}
