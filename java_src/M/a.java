package M;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    public final int f1330a;

    /* renamed from: b  reason: collision with root package name */
    public final e f1331b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1332c;

    public a(int i4, e eVar, int i5) {
        this.f1330a = i4;
        this.f1331b = eVar;
        this.f1332c = i5;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1330a);
        e eVar = this.f1331b;
        eVar.f1349a.performAction(this.f1332c, bundle);
    }
}
