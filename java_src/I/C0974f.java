package i;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import j.C1097o;
import j.MenuC1075F;
import j.x;
import java.util.ArrayList;
import q.m;
/* renamed from: i.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0974f implements InterfaceC0969a {

    /* renamed from: a  reason: collision with root package name */
    public final ActionMode.Callback f9550a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f9551b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f9552c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final m f9553d = new m();

    public C0974f(Context context, ActionMode.Callback callback) {
        this.f9551b = context;
        this.f9550a = callback;
    }

    @Override // i.InterfaceC0969a
    public final boolean a(AbstractC0970b abstractC0970b, MenuItem menuItem) {
        return this.f9550a.onActionItemClicked(e(abstractC0970b), new x(this.f9551b, (G.b) menuItem));
    }

    @Override // i.InterfaceC0969a
    public final boolean b(AbstractC0970b abstractC0970b, C1097o c1097o) {
        C0975g e4 = e(abstractC0970b);
        m mVar = this.f9553d;
        Menu menu = (Menu) mVar.get(c1097o);
        if (menu == null) {
            menu = new MenuC1075F(this.f9551b, c1097o);
            mVar.put(c1097o, menu);
        }
        return this.f9550a.onPrepareActionMode(e4, menu);
    }

    @Override // i.InterfaceC0969a
    public final void c(AbstractC0970b abstractC0970b) {
        this.f9550a.onDestroyActionMode(e(abstractC0970b));
    }

    @Override // i.InterfaceC0969a
    public final boolean d(AbstractC0970b abstractC0970b, C1097o c1097o) {
        C0975g e4 = e(abstractC0970b);
        m mVar = this.f9553d;
        Menu menu = (Menu) mVar.get(c1097o);
        if (menu == null) {
            menu = new MenuC1075F(this.f9551b, c1097o);
            mVar.put(c1097o, menu);
        }
        return this.f9550a.onCreateActionMode(e4, menu);
    }

    public final C0975g e(AbstractC0970b abstractC0970b) {
        ArrayList arrayList = this.f9552c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C0975g c0975g = (C0975g) arrayList.get(i4);
            if (c0975g != null && c0975g.f9555b == abstractC0970b) {
                return c0975g;
            }
        }
        C0975g c0975g2 = new C0975g(this.f9551b, abstractC0970b);
        arrayList.add(c0975g2);
        return c0975g2;
    }
}
