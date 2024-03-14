package com.android.quickstep;

import android.app.ActivityManager;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class H1 implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5470a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5471b;

    public /* synthetic */ H1(int i4, Object obj) {
        this.f5470a = i4;
        this.f5471b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f5470a) {
            case 0:
                return TopTaskTracker.f((ActivityManager.RunningTaskInfo) this.f5471b, (ActivityManager.RunningTaskInfo) obj);
            case 1:
                return TopTaskTracker.e((ActivityManager.RunningTaskInfo) this.f5471b, (ActivityManager.RunningTaskInfo) obj);
            default:
                return TopTaskTracker.b((TopTaskTracker) this.f5471b, (ActivityManager.RunningTaskInfo) obj);
        }
    }
}
