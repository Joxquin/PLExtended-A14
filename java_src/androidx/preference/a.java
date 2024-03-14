package androidx.preference;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ PreferenceFragmentCompat f3724d;

    public a(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.f3724d = preferenceFragmentCompat;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.f3724d.mList;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
