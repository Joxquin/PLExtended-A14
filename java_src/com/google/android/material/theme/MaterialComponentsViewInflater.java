package com.google.android.material.theme;

import F2.D;
import G2.a;
import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import e.C0807H;
import k.C1160s;
import k.C1164u;
import k.C1166v;
import k.M;
import p2.C1349a;
import z2.C1501a;
/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends C0807H {
    @Override // e.C0807H
    public final C1160s a(Context context, AttributeSet attributeSet) {
        return new D(context, attributeSet);
    }

    @Override // e.C0807H
    public final C1164u b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // e.C0807H
    public final C1166v c(Context context, AttributeSet attributeSet) {
        return new C1349a(context, attributeSet);
    }

    @Override // e.C0807H
    public final M d(Context context, AttributeSet attributeSet) {
        return new C1501a(context, attributeSet);
    }

    @Override // e.C0807H
    public final AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }
}
