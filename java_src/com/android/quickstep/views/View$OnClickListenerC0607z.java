package com.android.quickstep.views;

import android.view.View;
/* renamed from: com.android.quickstep.views.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class View$OnClickListenerC0607z implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6006d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsView f6007e;

    public /* synthetic */ View$OnClickListenerC0607z(RecentsView recentsView, int i4) {
        this.f6006d = i4;
        this.f6007e = recentsView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f6006d) {
            case 0:
                RecentsView.Z(this.f6007e, view);
                return;
            case 1:
                RecentsView.C(this.f6007e, view);
                return;
            case 2:
                RecentsView.C(this.f6007e, view);
                return;
            default:
                RecentsView.t(this.f6007e, view);
                return;
        }
    }
}
