package com.android.launcher3;

import com.android.launcher3.SecondaryDropTarget;
import com.android.launcher3.model.ModelWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class DropTargetHandler$onDeleteComplete$2 implements Runnable {
    final /* synthetic */ Object $tmp0;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4431d;

    public /* synthetic */ DropTargetHandler$onDeleteComplete$2(int i4, Object obj) {
        this.f4431d = i4;
        this.$tmp0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4431d) {
            case 0:
                ((ModelWriter) this.$tmp0).commitDelete();
                return;
            default:
                ((SecondaryDropTarget.DeferredOnComplete) this.$tmp0).onLauncherResume();
                return;
        }
    }
}
