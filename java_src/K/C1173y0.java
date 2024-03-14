package k;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: k.y0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1173y0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0 f11032d;

    public C1173y0(C0 c02) {
        this.f11032d = c02;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i4, long j4) {
        C1161s0 c1161s0;
        if (i4 == -1 || (c1161s0 = this.f11032d.f10732f) == null) {
            return;
        }
        c1161s0.f10970k = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
