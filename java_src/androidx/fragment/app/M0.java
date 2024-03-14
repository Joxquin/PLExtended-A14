package androidx.fragment.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
/* loaded from: classes.dex */
public final class M0 implements AdapterView.OnItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ListFragment f3315d;

    public M0(ListFragment listFragment) {
        this.f3315d = listFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i4, long j4) {
        ListView listView = (ListView) adapterView;
        this.f3315d.getClass();
    }
}
