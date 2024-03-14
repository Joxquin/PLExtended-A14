package androidx.fragment.app;

import android.widget.ListView;
/* loaded from: classes.dex */
public final class L0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ListFragment f3303d;

    public L0(ListFragment listFragment) {
        this.f3303d = listFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListView listView = this.f3303d.f3308h;
        listView.focusableViewAvailable(listView);
    }
}
