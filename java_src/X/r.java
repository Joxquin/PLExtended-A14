package X;

import android.view.View;
import androidx.preference.Preference;
/* loaded from: classes.dex */
public final class r implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Preference f2019d;

    public r(Preference preference) {
        this.f2019d = preference;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f2019d.performClick(view);
    }
}
