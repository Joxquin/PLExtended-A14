package f0;

import android.widget.RatingBar;
/* loaded from: classes.dex */
public final class u implements RatingBar.OnRatingBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f9246a;

    public u(x xVar) {
        this.f9246a = xVar;
    }

    @Override // android.widget.RatingBar.OnRatingBarChangeListener
    public final void onRatingChanged(RatingBar ratingBar, float f4, boolean z4) {
        x xVar = this.f9246a;
        xVar.f9272T = Math.round(f4 + xVar.f9273U);
        long currentTimeMillis = System.currentTimeMillis();
        x xVar2 = this.f9246a;
        long j4 = xVar2.f9271S;
        if (j4 != 0 && currentTimeMillis - j4 > 200) {
            xVar2.f9269Q = false;
            xVar2.f9270R.removeCallbacks(xVar2.f9282g0);
            this.f9246a.x();
        } else if (xVar2.f9269Q) {
        } else {
            xVar2.f9269Q = true;
            xVar2.f9270R.postDelayed(xVar2.f9282g0, 200L);
        }
    }
}
