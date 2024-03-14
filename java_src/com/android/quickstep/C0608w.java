package com.android.quickstep;

import android.app.ActivityManager;
import com.android.quickstep.AbsSwipeUpHandler;
import java.util.function.IntPredicate;
/* renamed from: com.android.quickstep.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0608w implements IntPredicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6008a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6009b;

    public /* synthetic */ C0608w(int i4, Object obj) {
        this.f6008a = i4;
        this.f6009b = obj;
    }

    @Override // java.util.function.IntPredicate
    public final boolean test(int i4) {
        switch (this.f6008a) {
            case 0:
                return AbsSwipeUpHandler.AnonymousClass5.a(i4, (ActivityManager.RunningTaskInfo) this.f6009b);
            default:
                return AbsSwipeUpHandler.J((AbsSwipeUpHandler) this.f6009b, i4);
        }
    }
}
