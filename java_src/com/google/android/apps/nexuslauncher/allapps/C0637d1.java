package com.google.android.apps.nexuslauncher.allapps;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.UserHandle;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.d1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0637d1 extends ShortcutConfigActivityInfo {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Context f7026d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0649g1 f7027e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0637d1(C0649g1 c0649g1, ComponentName componentName, UserHandle userHandle, Context context) {
        super(componentName, userHandle);
        this.f7027e = c0649g1;
        this.f7026d = context;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabelAndIcon
    public final Drawable getFullResIcon(IconCache iconCache) {
        Icon icon = this.f7027e.f7056f;
        Context context = this.f7026d;
        return icon != null ? icon.loadDrawable(context) : context.getDrawable(17629184);
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public final CharSequence getLabel(PackageManager packageManager) {
        return this.f7027e.title;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public final boolean startConfigActivity(Activity activity) {
        return false;
    }
}
