package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class v extends C0738b {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f8245e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ n f8246f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v(Context context, int i4, n nVar, int i5) {
        super(i4, context);
        this.f8245e = i5;
        this.f8246f = nVar;
    }

    @Override // com.google.android.material.timepicker.C0738b, androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        int i4 = this.f8245e;
        n nVar = this.f8246f;
        switch (i4) {
            case 0:
                super.onInitializeAccessibilityNodeInfo(view, eVar);
                eVar.j(view.getResources().getString(R.string.material_hour_suffix, String.valueOf(nVar.b())));
                return;
            default:
                super.onInitializeAccessibilityNodeInfo(view, eVar);
                eVar.j(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(nVar.f8224h)));
                return;
        }
    }
}
