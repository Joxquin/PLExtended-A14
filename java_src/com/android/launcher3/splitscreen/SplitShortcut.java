package com.android.launcher3.splitscreen;

import android.content.Context;
import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public abstract class SplitShortcut extends SystemShortcut {
    private final String TAG;
    private final SplitConfigurationOptions$SplitPositionOption position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitShortcut(int i4, int i5, Context context, ItemInfo itemInfo, View view, SplitConfigurationOptions$SplitPositionOption position) {
        super(i4, i5, context, itemInfo, view);
        h.e(position, "position");
        this.position = position;
        this.TAG = "SystemShortcut";
    }

    public final SplitConfigurationOptions$SplitPositionOption getPosition() {
        return this.position;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r10) {
        /*
            r9 = this;
            com.android.launcher3.model.data.ItemInfo r10 = r9.mItemInfo
            boolean r0 = r10 instanceof com.android.launcher3.model.data.WorkspaceItemInfo
            if (r0 == 0) goto L1a
            com.android.launcher3.model.data.WorkspaceItemInfo r10 = (com.android.launcher3.model.data.WorkspaceItemInfo) r10
            com.android.launcher3.icons.BitmapInfo r0 = r10.bitmap
            android.graphics.Bitmap r0 = r0.icon
            java.lang.String r1 = "workspaceItemInfo.bitmap.icon"
            kotlin.jvm.internal.h.d(r0, r1)
            android.content.Intent r10 = r10.intent
            java.lang.String r1 = "workspaceItemInfo.intent"
            kotlin.jvm.internal.h.d(r10, r1)
        L18:
            r5 = r10
            goto L31
        L1a:
            boolean r0 = r10 instanceof com.android.launcher3.model.data.AppInfo
            if (r0 == 0) goto L4f
            com.android.launcher3.model.data.AppInfo r10 = (com.android.launcher3.model.data.AppInfo) r10
            com.android.launcher3.icons.BitmapInfo r0 = r10.bitmap
            android.graphics.Bitmap r0 = r0.icon
            java.lang.String r1 = "appInfo.bitmap.icon"
            kotlin.jvm.internal.h.d(r0, r1)
            android.content.Intent r10 = r10.intent
            java.lang.String r1 = "appInfo.intent"
            kotlin.jvm.internal.h.d(r10, r1)
            goto L18
        L31:
            com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption r10 = r9.position
            int r10 = r10.stagePosition
            if (r10 != 0) goto L3a
            com.android.launcher3.logging.StatsLogManager$LauncherEvent r10 = com.android.launcher3.logging.StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP
            goto L3c
        L3a:
            com.android.launcher3.logging.StatsLogManager$LauncherEvent r10 = com.android.launcher3.logging.StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM
        L3c:
            r8 = r10
            com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource r10 = new com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource
            android.view.View r3 = r9.mOriginalView
            android.graphics.drawable.BitmapDrawable r4 = new android.graphics.drawable.BitmapDrawable
            r4.<init>(r0)
            com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption r6 = r9.position
            com.android.launcher3.model.data.ItemInfo r7 = r9.mItemInfo
            r2 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            goto L57
        L4f:
            java.lang.String r10 = r9.TAG
            java.lang.String r0 = "unknown item type"
            android.util.Log.e(r10, r0)
            r10 = 0
        L57:
            if (r10 != 0) goto L61
            java.lang.String r9 = "QuickstepSystemShortcut"
            java.lang.String r10 = "no split selection source"
            android.util.Log.w(r9, r10)
            return
        L61:
            android.content.Context r9 = r9.mTarget
            kotlin.jvm.internal.h.b(r9)
            com.android.launcher3.views.ActivityContext r9 = (com.android.launcher3.views.ActivityContext) r9
            r9.startSplitSelection(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.splitscreen.SplitShortcut.onClick(android.view.View):void");
    }
}
