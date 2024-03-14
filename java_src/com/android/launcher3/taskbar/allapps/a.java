package com.android.launcher3.taskbar.allapps;

import com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((TaskbarAllAppsContainerView.OnInvalidateHeaderListener) obj).onInvalidateHeader();
    }
}
