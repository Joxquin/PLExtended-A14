package com.android.launcher3.taskbar;

import com.android.quickstep.util.GroupTask;
import com.android.systemui.shared.recents.model.Task;
import java.util.function.Function;
/* renamed from: com.android.launcher3.taskbar.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0425e implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new GroupTask((Task) obj);
    }
}
