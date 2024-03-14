package com.android.launcher3.folder;

import com.android.launcher3.ShortcutAndWidgetContainer;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public final /* synthetic */ class u implements ToIntFunction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4627a;

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        switch (this.f4627a) {
            case 0:
                ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) obj;
                int i4 = FolderPagedView.f4596d;
                return 0;
            default:
                int i5 = FolderPagedView.f4596d;
                return ((ShortcutAndWidgetContainer) obj).getChildCount() - 1;
        }
    }
}
