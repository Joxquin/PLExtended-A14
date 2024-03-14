package X;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.C0186x;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import f.C0832a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class S extends androidx.recyclerview.widget.Z implements L {

    /* renamed from: a  reason: collision with root package name */
    public final PreferenceGroup f1953a;

    /* renamed from: b  reason: collision with root package name */
    public List f1954b;

    /* renamed from: c  reason: collision with root package name */
    public List f1955c;

    /* renamed from: d  reason: collision with root package name */
    public final List f1956d;

    /* renamed from: f  reason: collision with root package name */
    public final O f1958f = new O(this);

    /* renamed from: e  reason: collision with root package name */
    public final Handler f1957e = new Handler();

    public S(PreferenceScreen preferenceScreen) {
        this.f1953a = preferenceScreen;
        preferenceScreen.setOnPreferenceChangeInternalListener(this);
        this.f1954b = new ArrayList();
        this.f1955c = new ArrayList();
        this.f1956d = new ArrayList();
        setHasStableIds(preferenceScreen.f3708l);
        f();
    }

    public static boolean e(PreferenceGroup preferenceGroup) {
        return preferenceGroup.f3706j != Integer.MAX_VALUE;
    }

    @Override // X.L
    public final int a(String str) {
        int size = this.f1955c.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (TextUtils.equals(str, ((Preference) this.f1955c.get(i4)).getKey())) {
                return i4;
            }
        }
        return -1;
    }

    public final List b(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int e4 = preferenceGroup.e();
        int i4 = 0;
        for (int i5 = 0; i5 < e4; i5++) {
            Preference d4 = preferenceGroup.d(i5);
            if (d4.isVisible()) {
                if (!e(preferenceGroup) || i4 < preferenceGroup.f3706j) {
                    arrayList.add(d4);
                } else {
                    arrayList2.add(d4);
                }
                if (d4 instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) d4;
                    if (!(!(preferenceGroup2 instanceof PreferenceScreen))) {
                        continue;
                    } else if (e(preferenceGroup) && e(preferenceGroup2)) {
                        throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                    } else {
                        Iterator it = ((ArrayList) b(preferenceGroup2)).iterator();
                        while (it.hasNext()) {
                            Preference preference = (Preference) it.next();
                            if (!e(preferenceGroup) || i4 < preferenceGroup.f3706j) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i4++;
                        }
                    }
                } else {
                    i4++;
                }
            }
        }
        if (e(preferenceGroup) && i4 > preferenceGroup.f3706j) {
            C0085h c0085h = new C0085h(preferenceGroup.getContext(), arrayList2, preferenceGroup.getId());
            c0085h.setOnPreferenceClickListener(new P(this, preferenceGroup));
            arrayList.add(c0085h);
        }
        return arrayList;
    }

    public final void c(PreferenceGroup preferenceGroup, List list) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.f3702f);
        }
        int e4 = preferenceGroup.e();
        for (int i4 = 0; i4 < e4; i4++) {
            Preference d4 = preferenceGroup.d(i4);
            ((ArrayList) list).add(d4);
            Q q4 = new Q(d4);
            if (!((ArrayList) this.f1956d).contains(q4)) {
                ((ArrayList) this.f1956d).add(q4);
            }
            if (d4 instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) d4;
                if (!(preferenceGroup2 instanceof PreferenceScreen)) {
                    c(preferenceGroup2, list);
                }
            }
            d4.setOnPreferenceChangeInternalListener(this);
        }
    }

    public final Preference d(int i4) {
        if (i4 < 0 || i4 >= getItemCount()) {
            return null;
        }
        return (Preference) this.f1955c.get(i4);
    }

    public final void f() {
        for (Preference preference : this.f1954b) {
            preference.setOnPreferenceChangeInternalListener(null);
        }
        ArrayList arrayList = new ArrayList(this.f1954b.size());
        this.f1954b = arrayList;
        PreferenceGroup preferenceGroup = this.f1953a;
        c(preferenceGroup, arrayList);
        this.f1955c = b(preferenceGroup);
        preferenceGroup.getPreferenceManager();
        notifyDataSetChanged();
        for (Preference preference2 : this.f1954b) {
            preference2.getClass();
        }
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemCount() {
        return this.f1955c.size();
    }

    @Override // androidx.recyclerview.widget.Z
    public final long getItemId(int i4) {
        if (hasStableIds()) {
            return d(i4).getId();
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemViewType(int i4) {
        Q q4 = new Q(d(i4));
        ArrayList arrayList = (ArrayList) this.f1956d;
        int indexOf = arrayList.indexOf(q4);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = arrayList.size();
        arrayList.add(q4);
        return size;
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4) {
        ColorStateList colorStateList;
        a0 a0Var = (a0) e02;
        Preference d4 = d(i4);
        View view = a0Var.itemView;
        Drawable background = view.getBackground();
        Drawable drawable = a0Var.f1980d;
        if (background != drawable) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.m(view, drawable);
        }
        TextView textView = (TextView) a0Var.a(16908310);
        if (textView != null && (colorStateList = a0Var.f1981e) != null && !textView.getTextColors().equals(colorStateList)) {
            textView.setTextColor(colorStateList);
        }
        d4.onBindViewHolder(a0Var);
    }

    @Override // androidx.recyclerview.widget.Z
    public final E0 onCreateViewHolder(RecyclerView recyclerView, int i4) {
        Q q4 = (Q) ((ArrayList) this.f1956d).get(i4);
        LayoutInflater from = LayoutInflater.from(recyclerView.getContext());
        TypedArray obtainStyledAttributes = recyclerView.getContext().obtainStyledAttributes((AttributeSet) null, b0.f1985a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = C0832a.a(17301602, recyclerView.getContext());
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(q4.f1950a, (ViewGroup) recyclerView, false);
        if (inflate.getBackground() == null) {
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.m(inflate, drawable);
        }
        ViewGroup viewGroup = (ViewGroup) inflate.findViewById(16908312);
        if (viewGroup != null) {
            int i5 = q4.f1951b;
            if (i5 != 0) {
                from.inflate(i5, viewGroup);
            } else {
                viewGroup.setVisibility(8);
            }
        }
        return new a0(inflate);
    }
}
