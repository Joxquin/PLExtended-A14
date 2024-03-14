package com.android.quickstep.views;

import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.recents.model.Task;
import java.util.function.Supplier;
/* renamed from: com.android.quickstep.views.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0598p implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5981a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5982b;

    public /* synthetic */ C0598p(int i4, Object obj) {
        this.f5981a = i4;
        this.f5982b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        Boolean lambda$onTaskRemoved$0;
        TaskView lambda$createInitialSplitSelectAnimation$16;
        SplitConfigurationOptions$SplitSelectSource lambda$createInitialSplitSelectAnimation$17;
        switch (this.f5981a) {
            case 0:
                lambda$createInitialSplitSelectAnimation$16 = ((RecentsView) this.f5982b).lambda$createInitialSplitSelectAnimation$16();
                return lambda$createInitialSplitSelectAnimation$16;
            case 1:
                lambda$createInitialSplitSelectAnimation$17 = ((RecentsView) this.f5982b).lambda$createInitialSplitSelectAnimation$17();
                return lambda$createInitialSplitSelectAnimation$17;
            default:
                lambda$onTaskRemoved$0 = RecentsView.AnonymousClass12.lambda$onTaskRemoved$0((Task.TaskKey) this.f5982b);
                return lambda$onTaskRemoved$0;
        }
    }
}
