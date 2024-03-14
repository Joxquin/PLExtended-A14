package com.android.quickstep.util;

import android.content.Context;
import android.util.ArrayMap;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.android.internal.policy.SystemBarUtils;
import com.android.launcher3.util.window.CachedDisplayInfo;
import com.android.launcher3.util.window.WindowManagerProxy;
/* loaded from: classes.dex */
public class SystemWindowManagerProxy extends WindowManagerProxy {
    public SystemWindowManagerProxy(Context context) {
        super(true);
    }

    @Override // com.android.launcher3.util.window.WindowManagerProxy
    public ArrayMap estimateInternalDisplayBounds(Context context) {
        ArrayMap arrayMap = new ArrayMap();
        for (WindowMetrics windowMetrics : ((WindowManager) context.getSystemService(WindowManager.class)).getPossibleMaximumWindowMetrics(0)) {
            CachedDisplayInfo displayInfo = getDisplayInfo(windowMetrics, 0);
            arrayMap.put(displayInfo, estimateWindowBounds(context, displayInfo));
        }
        return arrayMap;
    }

    @Override // com.android.launcher3.util.window.WindowManagerProxy
    public int getRotation(Context context) {
        return context.getResources().getConfiguration().windowConfiguration.getRotation();
    }

    @Override // com.android.launcher3.util.window.WindowManagerProxy
    public int getStatusBarHeight(Context context, boolean z4, int i4) {
        return SystemBarUtils.getStatusBarHeight(context);
    }
}
