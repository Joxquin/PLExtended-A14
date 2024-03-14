package com.google.android.material.timepicker;

import android.view.View;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class u implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ w f8244d;

    public u(w wVar) {
        this.f8244d = wVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f8244d.b(((Integer) view.getTag(R.id.selection_type)).intValue());
    }
}
