package X;

import androidx.preference.PreferenceFragment;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public final class A implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ PreferenceFragment f1935d;

    public A(PreferenceFragment preferenceFragment) {
        this.f1935d = preferenceFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.f1935d.f3695f;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
