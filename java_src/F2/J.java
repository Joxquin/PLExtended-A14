package F2;

import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes.dex */
public final class J implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f432d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f433e;

    public /* synthetic */ J(TextInputLayout textInputLayout, int i4) {
        this.f432d = i4;
        this.f433e = textInputLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f432d) {
            case 0:
                v vVar = this.f433e.f8097f;
                vVar.f482i.performClick();
                vVar.f482i.jumpDrawablesToCurrentState();
                return;
            default:
                this.f433e.f8099g.requestLayout();
                return;
        }
    }
}
