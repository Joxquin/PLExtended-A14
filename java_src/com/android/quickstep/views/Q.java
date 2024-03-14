package com.android.quickstep.views;

import android.view.View;
/* loaded from: classes.dex */
public final /* synthetic */ class Q implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5939d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskView f5940e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5941f;

    public /* synthetic */ Q(TaskView taskView, Object obj, int i4) {
        this.f5939d = i4;
        this.f5940e = taskView;
        this.f5941f = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f5939d) {
            case 0:
                TaskView.f(this.f5940e, (IconView) this.f5941f, view);
                return;
            default:
                TaskView.c(this.f5940e, (String) this.f5941f, view);
                return;
        }
    }
}
