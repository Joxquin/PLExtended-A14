package f0;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.E0;
import androidx.slice.widget.SliceView;
/* loaded from: classes.dex */
public final class C extends E0 implements View.OnTouchListener, View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final F f9051d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ E f9052e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(E e4, View view) {
        super(view);
        this.f9052e = e4;
        this.f9051d = view instanceof F ? (F) view : null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SliceView sliceView = this.f9052e.f9064i;
        if (sliceView != null) {
            sliceView.f4124F = (int[]) view.getTag();
            this.f9052e.f9064i.performClick();
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C0843j c0843j;
        Q q4 = this.f9052e.f9065j;
        if (q4 != null) {
            SliceView sliceView = q4.f9136p;
            if (sliceView != null) {
                if (!((sliceView.f4119A == null && ((c0843j = sliceView.f4127d) == null || c0843j.e(sliceView.getContext()) == null)) ? false : true)) {
                    q4.f9137q.setPressed(false);
                }
            }
            q4.f9137q.getLocationOnScreen(q4.f9143w);
            q4.f9137q.getBackground().setHotspot((int) (motionEvent.getRawX() - q4.f9143w[0]), (int) (motionEvent.getRawY() - q4.f9143w[1]));
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                q4.f9137q.setPressed(true);
            } else if (actionMasked == 3 || actionMasked == 1 || actionMasked == 2) {
                q4.f9137q.setPressed(false);
            }
        }
        return false;
    }
}
