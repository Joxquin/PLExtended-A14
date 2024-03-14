package com.android.quickstep;

import android.app.ActivityManager;
import com.android.quickstep.TopTaskTracker;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class I1 implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5475a;

    public /* synthetic */ I1(int i4) {
        this.f5475a = i4;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean lambda$otherVisibleTaskThisIsExcludedOver$0;
        boolean lambda$onTaskMovedToFront$2;
        switch (this.f5475a) {
            case 0:
                lambda$onTaskMovedToFront$2 = TopTaskTracker.lambda$onTaskMovedToFront$2((ActivityManager.RunningTaskInfo) obj);
                return lambda$onTaskMovedToFront$2;
            default:
                lambda$otherVisibleTaskThisIsExcludedOver$0 = TopTaskTracker.CachedTaskInfo.lambda$otherVisibleTaskThisIsExcludedOver$0((ActivityManager.RunningTaskInfo) obj);
                return lambda$otherVisibleTaskThisIsExcludedOver$0;
        }
    }
}
