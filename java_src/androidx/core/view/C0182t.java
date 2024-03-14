package androidx.core.view;

import android.view.View;
/* renamed from: androidx.core.view.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0182t extends AbstractC0184v {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f3130e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0182t(int i4, int i5) {
        super(i4, Boolean.class, 0, 28);
        this.f3130e = i5;
    }

    public final Boolean d(View view) {
        switch (this.f3130e) {
            case 0:
                return Boolean.valueOf(G.c(view));
            default:
                return Boolean.valueOf(G.b(view));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0182t(int i4, Class cls, int i5, int i6, int i7) {
        super(i4, cls, i5, i6);
        this.f3130e = i7;
    }
}
