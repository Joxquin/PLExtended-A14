package com.android.launcher3.model.data;

import android.content.Context;
import android.util.Log;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.pm.PackageInstallInfo;
/* loaded from: classes.dex */
public abstract class ItemInfoWithIcon extends ItemInfo {
    public BitmapInfo bitmap;
    private int mProgressLevel;
    public int runtimeStatusFlags;

    public ItemInfoWithIcon() {
        this.bitmap = BitmapInfo.LOW_RES_INFO;
        this.runtimeStatusFlags = 0;
        this.mProgressLevel = 100;
    }

    @Override // 
    /* renamed from: clone */
    public abstract ItemInfoWithIcon mo1clone();

    public final int getProgressLevel() {
        if ((this.runtimeStatusFlags & 3072) != 0) {
            return this.mProgressLevel;
        }
        return 100;
    }

    public final boolean isAppStartable() {
        int i4 = this.runtimeStatusFlags;
        return (i4 & 1024) == 0 && ((i4 & 2048) != 0 || this.mProgressLevel == 100);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public boolean isDisabled() {
        return (this.runtimeStatusFlags & 4159) != 0;
    }

    public final FastBitmapDrawable newIcon(int i4, Context context) {
        FastBitmapDrawable newIcon = this.bitmap.newIcon(i4, context);
        newIcon.setIsDisabled(isDisabled());
        return newIcon;
    }

    public final void setProgressLevel(PackageInstallInfo packageInstallInfo) {
        int i4 = packageInstallInfo.progress;
        int i5 = packageInstallInfo.state;
        setProgressLevel(i4, i5);
        if (i5 == 3) {
            String str = "Icon info: " + this + " marked broken with install info: " + packageInstallInfo;
            Exception exc = new Exception();
            int i6 = FileLog.f4698a;
            Log.d("ItemInfoDebug", str, exc);
            FileLog.print("ItemInfoDebug", str, exc);
        }
    }

    public boolean usingLowResIcon() {
        return this.bitmap.isLowRes();
    }

    public ItemInfoWithIcon(ItemInfoWithIcon itemInfoWithIcon) {
        super(itemInfoWithIcon);
        this.bitmap = BitmapInfo.LOW_RES_INFO;
        this.runtimeStatusFlags = 0;
        this.mProgressLevel = 100;
        this.bitmap = itemInfoWithIcon.bitmap;
        this.mProgressLevel = itemInfoWithIcon.mProgressLevel;
        this.runtimeStatusFlags = itemInfoWithIcon.runtimeStatusFlags;
        this.user = itemInfoWithIcon.user;
    }

    public final void setProgressLevel(int i4, int i5) {
        int i6;
        if (i5 == 1) {
            this.mProgressLevel = i4;
            if (i4 < 100) {
                i6 = this.runtimeStatusFlags | 1024;
            } else {
                i6 = this.runtimeStatusFlags & (-1025);
            }
            this.runtimeStatusFlags = i6;
        } else if (i5 == 2) {
            this.mProgressLevel = i4;
            int i7 = this.runtimeStatusFlags & (-1025);
            this.runtimeStatusFlags = i7;
            this.runtimeStatusFlags = i4 < 100 ? i7 | 2048 : i7 & (-2049);
        } else {
            this.mProgressLevel = i5 != 0 ? 0 : 100;
            this.runtimeStatusFlags = this.runtimeStatusFlags & (-1025) & (-2049);
        }
    }
}
