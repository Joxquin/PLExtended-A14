package com.android.systemui.animation;

import android.view.View;
import android.window.SurfaceSyncGroup;
import com.android.launcher3.Hotseat;
import com.android.launcher3.taskbar.TaskbarDragLayer;
/* loaded from: classes.dex */
public final class C {
    public static void a(View view, View otherView, m3.a then) {
        kotlin.jvm.internal.h.e(view, "view");
        kotlin.jvm.internal.h.e(otherView, "otherView");
        kotlin.jvm.internal.h.e(then, "then");
        if (!view.isAttachedToWindow() || view.getViewRootImpl() == null || !otherView.isAttachedToWindow() || otherView.getViewRootImpl() == null || kotlin.jvm.internal.h.a(view.getViewRootImpl(), otherView.getViewRootImpl())) {
            then.invoke();
            return;
        }
        SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup("SysUIAnimation");
        surfaceSyncGroup.addSyncCompleteCallback(view.getContext().getMainExecutor(), new B(then));
        surfaceSyncGroup.add(view.getRootSurfaceControl(), (Runnable) null);
        surfaceSyncGroup.add(otherView.getRootSurfaceControl(), (Runnable) null);
        surfaceSyncGroup.markSyncReady();
    }

    public static final void b(Hotseat view, TaskbarDragLayer otherView, M0.b bVar) {
        kotlin.jvm.internal.h.e(view, "view");
        kotlin.jvm.internal.h.e(otherView, "otherView");
        a(view, otherView, new ViewRootSync$synchronizeNextDraw$2(bVar));
    }
}
