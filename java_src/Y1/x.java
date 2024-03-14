package Y1;

import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final /* synthetic */ class x implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2310d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ y f2311e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ CharSequence f2312f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f2313g;

    public /* synthetic */ x(y yVar, CharSequence charSequence, int i4, int i5) {
        this.f2310d = i5;
        this.f2311e = yVar;
        this.f2312f = charSequence;
        this.f2313g = i4;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Boolean valueOf;
        Boolean valueOf2;
        int i4 = this.f2310d;
        y yVar = this.f2311e;
        int i5 = this.f2313g;
        CharSequence charSequence = this.f2312f;
        switch (i4) {
            case 0:
                valueOf2 = Boolean.valueOf(super/*android.view.inputmethod.InputConnectionWrapper*/.setComposingText(charSequence, i5));
                return valueOf2;
            default:
                valueOf = Boolean.valueOf(super/*android.view.inputmethod.InputConnectionWrapper*/.commitText(charSequence, i5));
                return valueOf;
        }
    }
}
