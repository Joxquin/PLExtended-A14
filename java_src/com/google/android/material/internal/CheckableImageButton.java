package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import k.C1123G;
import x2.C1463a;
import x2.C1465c;
/* loaded from: classes.dex */
public class CheckableImageButton extends C1123G implements Checkable {

    /* renamed from: j  reason: collision with root package name */
    public static final int[] f7982j = {16842912};

    /* renamed from: g  reason: collision with root package name */
    public boolean f7983g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7984h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7985i;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f7983g;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        return this.f7983g ? ImageButton.mergeDrawableStates(super.onCreateDrawableState(i4 + 1), f7982j) : super.onCreateDrawableState(i4);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1465c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1465c c1465c = (C1465c) parcelable;
        super.onRestoreInstanceState(c1465c.f1528d);
        setChecked(c1465c.f12843f);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C1465c c1465c = new C1465c(super.onSaveInstanceState());
        c1465c.f12843f = this.f7983g;
        return c1465c;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z4) {
        if (!this.f7984h || this.f7983g == z4) {
            return;
        }
        this.f7983g = z4;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    @Override // android.view.View
    public final void setPressed(boolean z4) {
        if (this.f7985i) {
            super.setPressed(z4);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f7983g);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7984h = true;
        this.f7985i = true;
        J.h(this, new C1463a(this));
    }
}
