package k;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public final class B0 implements View.OnTouchListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0 f10722d;

    public B0(C0 c02) {
        this.f10722d = c02;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        K k4;
        int action = motionEvent.getAction();
        int x4 = (int) motionEvent.getX();
        int y4 = (int) motionEvent.getY();
        if (action == 0 && (k4 = this.f10722d.f10729C) != null && k4.isShowing() && x4 >= 0 && x4 < this.f10722d.f10729C.getWidth() && y4 >= 0 && y4 < this.f10722d.f10729C.getHeight()) {
            C0 c02 = this.f10722d;
            c02.f10751y.postDelayed(c02.f10747u, 250L);
            return false;
        } else if (action == 1) {
            C0 c03 = this.f10722d;
            c03.f10751y.removeCallbacks(c03.f10747u);
            return false;
        } else {
            return false;
        }
    }
}
