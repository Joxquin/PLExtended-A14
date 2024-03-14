package com.android.launcher3.popup;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Icon.OnDrawableLoadedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4956a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f4957b;

    public /* synthetic */ r(View view, int i4) {
        this.f4956a = i4;
        this.f4957b = view;
    }

    @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
    public final void onDrawableLoaded(Drawable drawable) {
        switch (this.f4956a) {
            case 0:
                ((ImageView) this.f4957b).setImageDrawable(drawable);
                return;
            default:
                this.f4957b.setBackground(drawable);
                return;
        }
    }
}
