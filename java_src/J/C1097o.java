package j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: j.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1097o implements G.a {

    /* renamed from: z  reason: collision with root package name */
    public static final int[] f10563z = {1, 4, 5, 3, 2, 0};

    /* renamed from: a  reason: collision with root package name */
    public final Context f10564a;

    /* renamed from: b  reason: collision with root package name */
    public final Resources f10565b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10566c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10567d;

    /* renamed from: e  reason: collision with root package name */
    public InterfaceC1095m f10568e;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f10569f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f10570g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10571h;

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f10572i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f10573j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f10574k;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence f10576m;

    /* renamed from: n  reason: collision with root package name */
    public Drawable f10577n;

    /* renamed from: o  reason: collision with root package name */
    public View f10578o;

    /* renamed from: w  reason: collision with root package name */
    public r f10586w;

    /* renamed from: y  reason: collision with root package name */
    public boolean f10588y;

    /* renamed from: l  reason: collision with root package name */
    public int f10575l = 0;

    /* renamed from: p  reason: collision with root package name */
    public boolean f10579p = false;

    /* renamed from: q  reason: collision with root package name */
    public boolean f10580q = false;

    /* renamed from: r  reason: collision with root package name */
    public boolean f10581r = false;

    /* renamed from: s  reason: collision with root package name */
    public boolean f10582s = false;

    /* renamed from: t  reason: collision with root package name */
    public boolean f10583t = false;

    /* renamed from: u  reason: collision with root package name */
    public final ArrayList f10584u = new ArrayList();

    /* renamed from: v  reason: collision with root package name */
    public final CopyOnWriteArrayList f10585v = new CopyOnWriteArrayList();

    /* renamed from: x  reason: collision with root package name */
    public boolean f10587x = false;

    public C1097o(Context context) {
        boolean z4 = false;
        this.f10564a = context;
        Resources resources = context.getResources();
        this.f10565b = resources;
        this.f10569f = new ArrayList();
        this.f10570g = new ArrayList();
        this.f10571h = true;
        this.f10572i = new ArrayList();
        this.f10573j = new ArrayList();
        this.f10574k = true;
        if (resources.getConfiguration().keyboard != 1 && ViewConfiguration.get(context).shouldShowMenuShortcutsWhenKeyboardPresent()) {
            z4 = true;
        }
        this.f10567d = z4;
    }

    public final r a(int i4, int i5, int i6, CharSequence charSequence) {
        int i7;
        int i8 = ((-65536) & i6) >> 16;
        if (i8 < 0 || i8 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i9 = (f10563z[i8] << 16) | (65535 & i6);
        r rVar = new r(this, i4, i5, i6, i9, charSequence, this.f10575l);
        ArrayList arrayList = this.f10569f;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                i7 = 0;
                break;
            } else if (((r) arrayList.get(size)).f10599d <= i9) {
                i7 = size + 1;
                break;
            }
        }
        arrayList.add(i7, rVar);
        p(true);
        return rVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i4, int i5, int i6, ComponentName componentName, Intent[] intentArr, Intent intent, int i7, MenuItem[] menuItemArr) {
        int i8;
        PackageManager packageManager = this.f10564a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i7 & 1) == 0) {
            removeGroup(i4);
        }
        for (int i9 = 0; i9 < size; i9++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i9);
            int i10 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i10 < 0 ? intent : intentArr[i10]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            r a4 = a(i4, i5, i6, resolveInfo.loadLabel(packageManager));
            a4.setIcon(resolveInfo.loadIcon(packageManager));
            a4.f10602g = intent2;
            if (menuItemArr != null && (i8 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i8] = a4;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(InterfaceC1072C interfaceC1072C, Context context) {
        this.f10585v.add(new WeakReference(interfaceC1072C));
        interfaceC1072C.f(context, this);
        this.f10574k = true;
    }

    public final void c(boolean z4) {
        if (this.f10583t) {
            return;
        }
        this.f10583t = true;
        Iterator it = this.f10585v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1072C interfaceC1072C = (InterfaceC1072C) weakReference.get();
            if (interfaceC1072C == null) {
                this.f10585v.remove(weakReference);
            } else {
                interfaceC1072C.a(this, z4);
            }
        }
        this.f10583t = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        r rVar = this.f10586w;
        if (rVar != null) {
            d(rVar);
        }
        this.f10569f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f10577n = null;
        this.f10576m = null;
        this.f10578o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(r rVar) {
        boolean z4 = false;
        if (!this.f10585v.isEmpty() && this.f10586w == rVar) {
            w();
            Iterator it = this.f10585v.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC1072C interfaceC1072C = (InterfaceC1072C) weakReference.get();
                if (interfaceC1072C == null) {
                    this.f10585v.remove(weakReference);
                } else {
                    z4 = interfaceC1072C.h(rVar);
                    if (z4) {
                        break;
                    }
                }
            }
            v();
            if (z4) {
                this.f10586w = null;
            }
        }
        return z4;
    }

    public boolean e(C1097o c1097o, MenuItem menuItem) {
        InterfaceC1095m interfaceC1095m = this.f10568e;
        return interfaceC1095m != null && interfaceC1095m.b(c1097o, menuItem);
    }

    public boolean f(r rVar) {
        boolean z4 = false;
        if (this.f10585v.isEmpty()) {
            return false;
        }
        w();
        Iterator it = this.f10585v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1072C interfaceC1072C = (InterfaceC1072C) weakReference.get();
            if (interfaceC1072C == null) {
                this.f10585v.remove(weakReference);
            } else {
                z4 = interfaceC1072C.c(rVar);
                if (z4) {
                    break;
                }
            }
        }
        v();
        if (z4) {
            this.f10586w = rVar;
        }
        return z4;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i4) {
        MenuItem findItem;
        int size = size();
        for (int i5 = 0; i5 < size; i5++) {
            r rVar = (r) this.f10569f.get(i5);
            if (rVar.f10596a == i4) {
                return rVar;
            }
            if (rVar.hasSubMenu() && (findItem = rVar.f10610o.findItem(i4)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public final r g(int i4, KeyEvent keyEvent) {
        ArrayList arrayList = this.f10584u;
        arrayList.clear();
        h(arrayList, i4, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (r) arrayList.get(0);
        }
        boolean n4 = n();
        for (int i5 = 0; i5 < size; i5++) {
            r rVar = (r) arrayList.get(i5);
            char c4 = n4 ? rVar.f10605j : rVar.f10603h;
            char[] cArr = keyData.meta;
            if ((c4 == cArr[0] && (metaState & 2) == 0) || ((c4 == cArr[2] && (metaState & 2) != 0) || (n4 && c4 == '\b' && i4 == 67))) {
                return rVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i4) {
        return (MenuItem) this.f10569f.get(i4);
    }

    public final void h(List list, int i4, KeyEvent keyEvent) {
        boolean n4 = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i4 == 67) {
            int size = this.f10569f.size();
            for (int i5 = 0; i5 < size; i5++) {
                r rVar = (r) this.f10569f.get(i5);
                if (rVar.hasSubMenu()) {
                    rVar.f10610o.h(list, i4, keyEvent);
                }
                char c4 = n4 ? rVar.f10605j : rVar.f10603h;
                if (((modifiers & 69647) == ((n4 ? rVar.f10606k : rVar.f10604i) & 69647)) && c4 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c4 == cArr[0] || c4 == cArr[2] || (n4 && c4 == '\b' && i4 == 67)) && rVar.isEnabled()) {
                        ((ArrayList) list).add(rVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f10588y) {
            return true;
        }
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            if (((r) this.f10569f.get(i4)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList l4 = l();
        if (this.f10574k) {
            Iterator it = this.f10585v.iterator();
            boolean z4 = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC1072C interfaceC1072C = (InterfaceC1072C) weakReference.get();
                if (interfaceC1072C == null) {
                    this.f10585v.remove(weakReference);
                } else {
                    z4 |= interfaceC1072C.g();
                }
            }
            if (z4) {
                this.f10572i.clear();
                this.f10573j.clear();
                int size = l4.size();
                for (int i4 = 0; i4 < size; i4++) {
                    r rVar = (r) l4.get(i4);
                    if (rVar.f()) {
                        this.f10572i.add(rVar);
                    } else {
                        this.f10573j.add(rVar);
                    }
                }
            } else {
                this.f10572i.clear();
                this.f10573j.clear();
                this.f10573j.addAll(l());
            }
            this.f10574k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i4, KeyEvent keyEvent) {
        return g(i4, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public C1097o k() {
        return this;
    }

    public final ArrayList l() {
        if (this.f10571h) {
            this.f10570g.clear();
            int size = this.f10569f.size();
            for (int i4 = 0; i4 < size; i4++) {
                r rVar = (r) this.f10569f.get(i4);
                if (rVar.isVisible()) {
                    this.f10570g.add(rVar);
                }
            }
            this.f10571h = false;
            this.f10574k = true;
            return this.f10570g;
        }
        return this.f10570g;
    }

    public boolean m() {
        return this.f10587x;
    }

    public boolean n() {
        return this.f10566c;
    }

    public boolean o() {
        return this.f10567d;
    }

    public final void p(boolean z4) {
        if (this.f10579p) {
            this.f10580q = true;
            if (z4) {
                this.f10581r = true;
                return;
            }
            return;
        }
        if (z4) {
            this.f10571h = true;
            this.f10574k = true;
        }
        if (this.f10585v.isEmpty()) {
            return;
        }
        w();
        Iterator it = this.f10585v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1072C interfaceC1072C = (InterfaceC1072C) weakReference.get();
            if (interfaceC1072C == null) {
                this.f10585v.remove(weakReference);
            } else {
                interfaceC1072C.d();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i4, int i5) {
        return q(findItem(i4), null, i5);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i4, KeyEvent keyEvent, int i5) {
        r g4 = g(i4, keyEvent);
        boolean q4 = g4 != null ? q(g4, null, i5) : false;
        if ((i5 & 2) != 0) {
            c(true);
        }
        return q4;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q(android.view.MenuItem r7, j.InterfaceC1072C r8, int r9) {
        /*
            r6 = this;
            j.r r7 = (j.r) r7
            r0 = 0
            if (r7 == 0) goto Ld2
            boolean r1 = r7.isEnabled()
            if (r1 != 0) goto Ld
            goto Ld2
        Ld:
            android.view.MenuItem$OnMenuItemClickListener r1 = r7.f10611p
            r2 = 1
            if (r1 == 0) goto L19
            boolean r1 = r1.onMenuItemClick(r7)
            if (r1 == 0) goto L19
            goto L40
        L19:
            j.o r1 = r7.f10609n
            boolean r1 = r1.e(r1, r7)
            if (r1 == 0) goto L22
            goto L40
        L22:
            android.content.Intent r1 = r7.f10602g
            if (r1 == 0) goto L36
            j.o r3 = r7.f10609n     // Catch: android.content.ActivityNotFoundException -> L2e
            android.content.Context r3 = r3.f10564a     // Catch: android.content.ActivityNotFoundException -> L2e
            r3.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> L2e
            goto L40
        L2e:
            r1 = move-exception
            java.lang.String r3 = "MenuItemImpl"
            java.lang.String r4 = "Can't find activity to handle intent; ignoring"
            android.util.Log.e(r3, r4, r1)
        L36:
            androidx.core.view.c r1 = r7.f10593A
            if (r1 == 0) goto L42
            boolean r1 = r1.e()
            if (r1 == 0) goto L42
        L40:
            r1 = r2
            goto L43
        L42:
            r1 = r0
        L43:
            androidx.core.view.c r3 = r7.f10593A
            if (r3 == 0) goto L4f
            boolean r4 = r3.a()
            if (r4 == 0) goto L4f
            r4 = r2
            goto L50
        L4f:
            r4 = r0
        L50:
            boolean r5 = r7.e()
            if (r5 == 0) goto L62
            boolean r7 = r7.expandActionView()
            r1 = r1 | r7
            if (r1 == 0) goto Ld1
            r6.c(r2)
            goto Ld1
        L62:
            boolean r5 = r7.hasSubMenu()
            if (r5 != 0) goto L73
            if (r4 == 0) goto L6b
            goto L73
        L6b:
            r7 = r9 & 1
            if (r7 != 0) goto Ld1
            r6.c(r2)
            goto Ld1
        L73:
            r9 = r9 & 4
            if (r9 != 0) goto L7a
            r6.c(r0)
        L7a:
            boolean r9 = r7.hasSubMenu()
            if (r9 != 0) goto L8e
            j.L r9 = new j.L
            android.content.Context r5 = r6.f10564a
            r9.<init>(r5, r6, r7)
            r7.f10610o = r9
            java.lang.CharSequence r5 = r7.f10600e
            r9.setHeaderTitle(r5)
        L8e:
            j.L r7 = r7.f10610o
            if (r4 == 0) goto L95
            r3.f(r7)
        L95:
            java.util.concurrent.CopyOnWriteArrayList r9 = r6.f10585v
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L9e
            goto Lcb
        L9e:
            if (r8 == 0) goto La4
            boolean r0 = r8.j(r7)
        La4:
            java.util.concurrent.CopyOnWriteArrayList r8 = r6.f10585v
            java.util.Iterator r8 = r8.iterator()
        Laa:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lcb
            java.lang.Object r9 = r8.next()
            java.lang.ref.WeakReference r9 = (java.lang.ref.WeakReference) r9
            java.lang.Object r3 = r9.get()
            j.C r3 = (j.InterfaceC1072C) r3
            if (r3 != 0) goto Lc4
            java.util.concurrent.CopyOnWriteArrayList r3 = r6.f10585v
            r3.remove(r9)
            goto Laa
        Lc4:
            if (r0 != 0) goto Laa
            boolean r0 = r3.j(r7)
            goto Laa
        Lcb:
            r1 = r1 | r0
            if (r1 != 0) goto Ld1
            r6.c(r2)
        Ld1:
            return r1
        Ld2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.C1097o.q(android.view.MenuItem, j.C, int):boolean");
    }

    public final void r(InterfaceC1072C interfaceC1072C) {
        Iterator it = this.f10585v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1072C interfaceC1072C2 = (InterfaceC1072C) weakReference.get();
            if (interfaceC1072C2 == null || interfaceC1072C2 == interfaceC1072C) {
                this.f10585v.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i4) {
        int size = size();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (((r) this.f10569f.get(i6)).f10597b == i4) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 >= 0) {
            int size2 = this.f10569f.size() - i6;
            while (true) {
                int i7 = i5 + 1;
                if (i5 >= size2 || ((r) this.f10569f.get(i6)).f10597b != i4) {
                    break;
                }
                if (i6 >= 0 && i6 < this.f10569f.size()) {
                    this.f10569f.remove(i6);
                }
                i5 = i7;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i4) {
        int size = size();
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                i5 = -1;
                break;
            } else if (((r) this.f10569f.get(i5)).f10596a == i4) {
                break;
            } else {
                i5++;
            }
        }
        if (i5 < 0 || i5 >= this.f10569f.size()) {
            return;
        }
        this.f10569f.remove(i5);
        p(true);
    }

    public final void s(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItem item = getItem(i4);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC1081L) item.getSubMenu()).s(bundle);
            }
        }
        int i5 = bundle.getInt("android:menu:expandedactionview");
        if (i5 <= 0 || (findItem = findItem(i5)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i4, boolean z4, boolean z5) {
        int size = this.f10569f.size();
        for (int i5 = 0; i5 < size; i5++) {
            r rVar = (r) this.f10569f.get(i5);
            if (rVar.f10597b == i4) {
                rVar.f10619x = (rVar.f10619x & (-5)) | (z5 ? 4 : 0);
                rVar.setCheckable(z4);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z4) {
        this.f10587x = z4;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i4, boolean z4) {
        int size = this.f10569f.size();
        for (int i5 = 0; i5 < size; i5++) {
            r rVar = (r) this.f10569f.get(i5);
            if (rVar.f10597b == i4) {
                rVar.setEnabled(z4);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i4, boolean z4) {
        int size = this.f10569f.size();
        boolean z5 = false;
        for (int i5 = 0; i5 < size; i5++) {
            r rVar = (r) this.f10569f.get(i5);
            if (rVar.f10597b == i4) {
                int i6 = rVar.f10619x;
                int i7 = (i6 & (-9)) | (z4 ? 0 : 8);
                rVar.f10619x = i7;
                if (i6 != i7) {
                    z5 = true;
                }
            }
        }
        if (z5) {
            p(true);
        }
    }

    public final void setOptionalIconsVisible(boolean z4) {
        this.f10582s = z4;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z4) {
        this.f10566c = z4;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f10569f.size();
    }

    public final void t(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i4 = 0; i4 < size; i4++) {
            MenuItem item = getItem(i4);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC1081L) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i4, CharSequence charSequence, int i5, Drawable drawable, View view) {
        Resources resources = this.f10565b;
        if (view != null) {
            this.f10578o = view;
            this.f10576m = null;
            this.f10577n = null;
        } else {
            if (i4 > 0) {
                this.f10576m = resources.getText(i4);
            } else if (charSequence != null) {
                this.f10576m = charSequence;
            }
            if (i5 > 0) {
                Context context = this.f10564a;
                Object obj = B.c.f105a;
                this.f10577n = context.getDrawable(i5);
            } else if (drawable != null) {
                this.f10577n = drawable;
            }
            this.f10578o = null;
        }
        p(false);
    }

    public final void v() {
        this.f10579p = false;
        if (this.f10580q) {
            this.f10580q = false;
            p(this.f10581r);
        }
    }

    public final void w() {
        if (this.f10579p) {
            return;
        }
        this.f10579p = true;
        this.f10580q = false;
        this.f10581r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i4) {
        return a(0, 0, 0, this.f10565b.getString(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i4) {
        return addSubMenu(0, 0, 0, this.f10565b.getString(i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i4, int i5, int i6, CharSequence charSequence) {
        return a(i4, i5, i6, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i4, int i5, int i6, CharSequence charSequence) {
        r a4 = a(i4, i5, i6, charSequence);
        SubMenuC1081L subMenuC1081L = new SubMenuC1081L(this.f10564a, this, a4);
        a4.f10610o = subMenuC1081L;
        subMenuC1081L.setHeaderTitle(a4.f10600e);
        return subMenuC1081L;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i4, int i5, int i6, int i7) {
        return a(i4, i5, i6, this.f10565b.getString(i7));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i4, int i5, int i6, int i7) {
        return addSubMenu(i4, i5, i6, this.f10565b.getString(i7));
    }
}
