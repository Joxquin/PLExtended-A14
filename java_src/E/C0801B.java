package e;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
import f.C0832a;
import i.C0972d;
/* renamed from: e.B  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0801B extends ContentFrameLayout {

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f8769l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0801B(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, C0972d c0972d) {
        super(c0972d);
        this.f8769l = layoutInflater$Factory2C0803D;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f8769l.E(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x4 = (int) motionEvent.getX();
            int y4 = (int) motionEvent.getY();
            if (x4 < -5 || y4 < -5 || x4 > getWidth() + 5 || y4 > getHeight() + 5) {
                LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = this.f8769l;
                layoutInflater$Factory2C0803D.C(layoutInflater$Factory2C0803D.J(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        setBackgroundDrawable(C0832a.a(i4, getContext()));
    }
}
