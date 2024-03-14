package k;

import android.graphics.Typeface;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: k.c0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1130c0 extends D.m {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f10875a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f10876b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ WeakReference f10877c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1134e0 f10878d;

    public C1130c0(C1134e0 c1134e0, int i4, int i5, WeakReference weakReference) {
        this.f10878d = c1134e0;
        this.f10875a = i4;
        this.f10876b = i5;
        this.f10877c = weakReference;
    }

    @Override // D.m
    public final void c(int i4) {
    }

    @Override // D.m
    public final void d(Typeface typeface) {
        int i4 = this.f10875a;
        if (i4 != -1) {
            typeface = Typeface.create(typeface, i4, (this.f10876b & 2) != 0);
        }
        C1134e0 c1134e0 = this.f10878d;
        if (c1134e0.f10896l) {
            c1134e0.f10895k = typeface;
            TextView textView = (TextView) this.f10877c.get();
            if (textView != null) {
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                if (androidx.core.view.A.b(textView)) {
                    textView.post(new RunnableC1132d0(textView, typeface, c1134e0.f10893i));
                } else {
                    textView.setTypeface(typeface, c1134e0.f10893i);
                }
            }
        }
    }
}
