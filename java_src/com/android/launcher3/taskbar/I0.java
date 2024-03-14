package com.android.launcher3.taskbar;

import java.util.function.IntPredicate;
/* loaded from: classes.dex */
public final /* synthetic */ class I0 implements IntPredicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TaskbarStashController f5032a;

    public /* synthetic */ I0(TaskbarStashController taskbarStashController) {
        this.f5032a = taskbarStashController;
    }

    @Override // java.util.function.IntPredicate
    public final boolean test(int i4) {
        return TaskbarStashController.h(this.f5032a, i4);
    }
}
