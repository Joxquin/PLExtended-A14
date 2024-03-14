package com.android.launcher3.pm;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class PinRequestHelper {
    public static WorkspaceItemInfo createWorkspaceItemFromPinItemRequest(Context context, final LauncherApps.PinItemRequest pinItemRequest, final long j4) {
        BitmapInfo createBadgedIconBitmap;
        if (pinItemRequest != null && pinItemRequest.getRequestType() == 1 && pinItemRequest.isValid()) {
            if (j4 > 0) {
                Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: R0.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        long j5 = j4;
                        LauncherApps.PinItemRequest pinItemRequest2 = pinItemRequest;
                        SystemClock.sleep(j5);
                        if (pinItemRequest2.isValid()) {
                            pinItemRequest2.accept();
                        }
                    }
                });
            } else if (!pinItemRequest.accept()) {
                return null;
            }
            ShortcutInfo shortcutInfo = pinItemRequest.getShortcutInfo();
            WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(context, shortcutInfo);
            LauncherIcons obtain = LauncherIcons.obtain(context);
            try {
                Drawable icon = ShortcutCachingLogic.getIcon(context, shortcutInfo, LauncherAppState.getIDP(context).fillResIconDpi);
                if (icon == null) {
                    createBadgedIconBitmap = BitmapInfo.LOW_RES_INFO;
                } else {
                    BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
                    iconOptions.setExtractedColor(GraphicsUtils.getAttrColor(16843829, context));
                    createBadgedIconBitmap = obtain.createBadgedIconBitmap(icon, iconOptions);
                }
                obtain.recycle();
                workspaceItemInfo.bitmap = createBadgedIconBitmap;
                LauncherAppState.getInstance(context).getModel().updateAndBindWorkspaceItem(workspaceItemInfo, shortcutInfo);
                return workspaceItemInfo;
            } catch (Throwable th) {
                try {
                    obtain.recycle();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }
}
