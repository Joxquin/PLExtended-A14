package k;

import androidx.appcompat.widget.AppCompatTextView;
/* renamed from: k.g0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1138g0 extends C1136f0 {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f10900b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1138g0(AppCompatTextView appCompatTextView) {
        super(appCompatTextView);
        this.f10900b = appCompatTextView;
    }

    @Override // k.C1136f0
    public final void a(int i4) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i4);
    }

    @Override // k.C1136f0
    public final void b(int i4) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i4);
    }
}
