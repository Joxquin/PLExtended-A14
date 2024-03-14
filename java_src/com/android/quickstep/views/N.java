package com.android.quickstep.views;

import android.view.View;
import com.android.launcher3.popup.SystemShortcut;
/* loaded from: classes.dex */
public final /* synthetic */ class N implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5936d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5937e;

    public /* synthetic */ N(int i4, Object obj) {
        this.f5936d = i4;
        this.f5937e = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f5936d) {
            case 0:
                TaskMenuView.b((TaskMenuView) this.f5937e, view);
                return;
            default:
                ((SystemShortcut) this.f5937e).onClick(view);
                return;
        }
    }
}
