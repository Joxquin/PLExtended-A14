package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.C0165b;
/* renamed from: com.google.android.material.timepicker.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0738b extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final M.c f8209d;

    public C0738b(int i4, Context context) {
        this.f8209d = new M.c(16, context.getString(i4));
    }

    @Override // androidx.core.view.C0165b
    public void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        eVar.b(this.f8209d);
    }
}
