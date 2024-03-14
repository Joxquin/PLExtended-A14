package f0;

import android.view.View;
import androidx.slice.widget.SliceView;
import b0.C0312f;
/* loaded from: classes.dex */
public final class K implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9130d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SliceView f9131e;

    public /* synthetic */ K(SliceView sliceView, int i4) {
        this.f9130d = i4;
        this.f9131e = sliceView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View.OnLongClickListener onLongClickListener;
        switch (this.f9130d) {
            case 0:
                SliceView sliceView = this.f9131e;
                if (!sliceView.f4122D || (onLongClickListener = sliceView.f4129f) == null) {
                    return;
                }
                sliceView.f4123E = true;
                onLongClickListener.onLongClick(sliceView);
                this.f9131e.performHapticFeedback(0);
                return;
            default:
                C0312f c0312f = this.f9131e.f4131h;
                if (c0312f != null && c0312f.b()) {
                    this.f9131e.f4128e.j(true);
                    SliceView sliceView2 = this.f9131e;
                    sliceView2.f4128e.m(sliceView2.f4127d);
                }
                this.f9131e.f4130g.postDelayed(this, 60000L);
                return;
        }
    }
}
