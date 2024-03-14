package F2;

import android.text.Editable;
import x2.C1479q;
/* loaded from: classes.dex */
public final class r extends C1479q {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ v f470d;

    public r(v vVar) {
        this.f470d = vVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f470d.c().a();
    }

    @Override // x2.C1479q, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        this.f470d.c().b();
    }
}
