package com.android.launcher3.widget;

import android.app.WallpaperColors;
import android.content.Context;
import android.util.SparseIntArray;
import com.android.launcher3.util.ResourceBasedOverride;
/* loaded from: classes.dex */
public class LocalColorExtractor implements ResourceBasedOverride {

    /* loaded from: classes.dex */
    public interface Listener {
    }

    public void applyColorsOverride(Context context, WallpaperColors wallpaperColors) {
    }

    public SparseIntArray generateColorsOverride(WallpaperColors wallpaperColors) {
        return null;
    }
}
