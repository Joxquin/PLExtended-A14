package n2;

import android.content.res.TypedArray;
import android.view.View;
/* loaded from: classes.dex */
public final class l implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ q f11822d;

    public l(q qVar) {
        this.f11822d = qVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        q qVar = this.f11822d;
        if (qVar.f11833m && qVar.isShowing()) {
            q qVar2 = this.f11822d;
            if (!qVar2.f11835o) {
                TypedArray obtainStyledAttributes = qVar2.getContext().obtainStyledAttributes(new int[]{16843611});
                qVar2.f11834n = obtainStyledAttributes.getBoolean(0, true);
                obtainStyledAttributes.recycle();
                qVar2.f11835o = true;
            }
            if (qVar2.f11834n) {
                this.f11822d.cancel();
            }
        }
    }
}
