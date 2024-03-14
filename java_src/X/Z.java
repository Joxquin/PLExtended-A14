package X;

import androidx.core.view.C0165b;
import androidx.recyclerview.widget.F0;
import androidx.recyclerview.widget.G0;
import androidx.recyclerview.widget.RecyclerView;
@Deprecated
/* loaded from: classes.dex */
public final class Z extends G0 {

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f1976f;

    /* renamed from: g  reason: collision with root package name */
    public final F0 f1977g;

    /* renamed from: h  reason: collision with root package name */
    public final Y f1978h;

    public Z(RecyclerView recyclerView) {
        super(recyclerView);
        this.f1977g = this.f3800e;
        this.f1978h = new Y(this);
        this.f1976f = recyclerView;
    }

    @Override // androidx.recyclerview.widget.G0
    public final C0165b a() {
        return this.f1978h;
    }
}
